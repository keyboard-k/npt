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
		
		$v = $this->__(array_merge(w('r'), _array_keys(w('v'), 0)));
		
		if (!empty($v->v)) {
			$sql = 'SELECT *
				FROM _objects o, _objects_type t
				WHERE o.object_id = ?
					AND t.type_alias = ?
					AND o.object_type = t.type_id';
			$video = sql_rowset(sql_filter($sql, $v->v, 'tv'));
			
			$sql = 'SELECT *
				FROM _objects o, _objects_type t, _bio b
				WHERE o.object_id <> ?
					AND t.type_alias = ?
					AND o.object_type = t.type_id
					AND o.object_bio = b.bio_id
				ORDER BY o.object_time';
			$tv_list = sql_rowset(sql_filter($sql, $v->v, 'tv'));
			
			$tv = w();
			foreach ($video as $row) {
				$tv[] = $row;
			}
			
			foreach ($tv_list as $row) {
				$tv[] = $row;
			}
			
			//_pre($tv, true); 
		} else {
			$sql = 'SELECT *
				FROM _objects o, _objects_type t, _bio b
				WHERE t.type_alias = ?
					AND o.object_type = t.type_id
					AND o.object_bio = b.bio_id
				ORDER BY o.object_time';
			$tv = sql_rowset(sql_filter($sql, 'tv'));
		}
		
		foreach ($tv as $i => $row) {
			if (!$i) _style('tv', array('FIRST_SUBJECT' => $row->object_subject));
			
			//$preg = preg_match("^http://(?<domain>([^./]+\\.)*youtube\\.com)(/v/|/watch\\?v=)(?<videoId>[A-Za-z0-9_-]{11})", $row->object_content);
			
			preg_match('#(?<=(?:v|i)=)[a-zA-Z0-9-]+(?=&)|(?<=(?:v|i)\/)[^&\n]+|(?<=embed\/)[^"&\n]+|(?<=(?:v|i)=)[^&\n]+|(?<=youtu.be\/)[^&\n]+#', $row->object_content, $preg);
			
			$embed = '<iframe width="560" height="315" src="http://www.youtube.com/embed/' . $preg[0] . '" frameborder="0" allowfullscreen></iframe>';
			
			$_row = array(
				'ID' => $row->object_id,
				'BIO' => $row->object_bio,
				'SUBJECT' => $row->object_subject,
				'CONTENT' => $row->object_content,
				'VIDEO' => $preg[0],
				'EMBED' => (!$i) ? $embed : '<a href="' . _link('tv', array('v' => $row->object_id)) . '" class="thumbnail"><img src="http://i2.ytimg.com/vi/' . $preg[0] . '/default.jpg" alt=""><br /><h5>' . $row->object_subject . '</h5></a>',
				'SPAN' => (!$i) ? 'span6' : 'span2',
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