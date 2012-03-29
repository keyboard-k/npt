<?php
/*
<NPT, a web development framework.>
Copyright (C) <2009>  <NPT>

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/
if (!defined('XFS')) exit;

class __news extends xmd {
	public function __construct() {
		parent::__construct();
		
		$this->auth(false);
		$this->_m(_array_keys(w('read like publish')));
	}
	
	public function home() {
		global $core, $bio;
		
		$v = $this->__(array_merge(w('a r'), _array_keys(w('s'), 0)));
		
		if (!empty($v->a)) {
			
		}
		
		if (!empty($v->r)) {
			$sql = 'SELECT *
				FROM _objects o, _objects_type t, _bio b, _objects_rel_assoc ra, _objects_rel_type rt
				WHERE t.type_alias = ?
					AND rt.type_alias = ?
					AND o.object_bio = b.bio_id
					AND ra.assoc_object = o.object_id
					AND ra.assoc_rel_type = rt.type_id
				ORDER BY o.object_time
				LIMIT ??, ??';
			$news = sql_rowset(sql_filter($sql, 'news', $v->r, $v->s, $core->v('objects_per_page')));
			
			$sql = 'SELECT MAX(object_id) AS total
				FROM _objects o, _objects_type t, _objects_rel_assoc ra, _objects_rel_type rt
				WHERE t.type_alias = ?
					AND rt.type_alias = ?
					AND ra.assoc_object = o.object_id
					AND ra.assoc_rel_type = rt.type_id';
			$news_total = sql_field(sql_filter($sql, 'news', $v->r), 'total', 0);
		} else {
			$sql = 'SELECT *
				FROM _objects o, _objects_type t, _bio b
				WHERE t.type_alias = ?
					AND o.object_type = t.type_id
					AND o.object_bio = b.bio_id
				ORDER BY o.object_time
				LIMIT ??, ??';
			$news = sql_rowset(sql_filter($sql, 'news', $v->s, $core->v('objects_per_page')));
			
			$sql = 'SELECT MAX(object_id) AS total
				FROM _objects o, _objects_type t
				WHERE t.type_alias = ?
					AND o.object_type = t.type_id';
			$news_total = sql_field(sql_filter($sql, 'news'), 'total', 0);
		}
		
		foreach ($news as $i => $row) {
			if (!$i) _style('news', _pagination(_link('news'), 's:%d', ($news_total + 1), $core->v('objects_per_page'), $v->s));
			
			$_row = array(
				'ID' => $row->object_id,
				'BIO' => $row->object_bio,
				'SUBJECT' => $row->object_subject,
				'CONTENT' => $row->object_content,
				'TIME' => $bio->format_date($row->object_time)
			);
			
			_style('news.row', array_merge($_row, $this->_profile($row)));
		}
		
		$sql = 'SELECT *
			FROM _objects_rel_type
			ORDER BY type_alias';
		$rel_type = sql_rowset($sql);
		
		foreach ($rel_type as $i => $row) {
			if (!$i) _style('rel_type', array(
				'NEWS_URL' => _link('news')
			));
			
			$row->type_alias = _link('news', array('r' => $row->type_alias));
			
			_style('rel_type.row', $row);
		}
		
		return;
	}
}

?>