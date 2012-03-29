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

class __tv extends xmd {
	public function __construct() {
		parent::__construct();
		
		$this->auth(false);
		$this->_m(_array_keys(w('watch like publish')));
	}
	
	public function home() {
		global $core, $bio;
		
		$v = $this->__(array_merge(w('v r'), _array_keys(w('s'), 0)));
		
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
			$tv = sql_rowset(sql_filter($sql, 'tv', $v->r, $v->s, $core->v('objects_per_page')));
			
			$sql = 'SELECT MAX(object_id) AS total
				FROM _objects o, _objects_type t, _objects_rel_assoc ra, _objects_rel_type rt
				WHERE t.type_alias = ?
					AND rt.type_alias = ?
					AND ra.assoc_object = o.object_id
					AND ra.assoc_rel_type = rt.type_id';
			$tv_total = sql_field(sql_filter($sql, 'tv', $v->r), 'total', 0);
		} else {
			$sql = 'SELECT *
				FROM _objects o, _objects_type t, _bio b
				WHERE t.type_alias = ?
					AND o.object_type = t.type_id
					AND o.object_bio = b.bio_id
				ORDER BY o.object_time
				LIMIT ??, ??';
			$tv = sql_rowset(sql_filter($sql, 'tv', $v->s, $core->v('objects_per_page')));
			
			$sql = 'SELECT COUNT(object_id) AS total
				FROM _objects o, _objects_type t
				WHERE t.type_alias = ?
					AND o.object_type = t.type_id';
			$tv_total = sql_field(sql_filter($sql, 'tv'), 'total', 0);
		}

		foreach ($tv as $i => $row) {
			if (!$i) _style('tv', _pagination(_link('tv'), 's:%d', ($tv_total + 1), $core->v('objects_per_page'), $v->s));
			
			//$preg = preg_match("^http://(?<domain>([^./]+\\.)*youtube\\.com)(/v/|/watch\\?v=)(?<videoId>[A-Za-z0-9_-]{11})", $row->object_content);
			
			preg_match('#(?<=(?:v|i)=)[a-zA-Z0-9-]+(?=&)|(?<=(?:v|i)\/)[^&\n]+|(?<=embed\/)[^"&\n]+|(?<=(?:v|i)=)[^&\n]+|(?<=youtu.be\/)[^&\n]+#', $row->object_content, $preg);
			
			$_row = array(
				'ID' => $row->object_id,
				'BIO' => $row->object_bio,
				'SUBJECT' => $row->object_subject,
				'CONTENT' => $row->object_content,
				'VIDEO' => $preg[0],
				'TIME' => $bio->format_date($row->object_time)
			);
			
			_style('tv.row', array_merge($_row, $this->_profile($row)));
		}
		
		$sql = 'SELECT *
			FROM _objects_rel_type
			ORDER BY type_alias';
		$rel_type = sql_rowset($sql);
		
		foreach ($rel_type as $i => $row) {
			if (!$i) _style('rel_type', array(
				'TV_URL' => _link('tv')
			));
			
			$row->type_alias = _link('tv', array('r' => $row->type_alias));
			
			_style('rel_type.row', $row);
		}
		
		return;
	}
}

?>