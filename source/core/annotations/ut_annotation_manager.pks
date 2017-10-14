create or replace package ut_annotation_manager authid current_user as
  /*
  utPLSQL - Version X.X.X.X
  Copyright 2016 - 2017 utPLSQL Project

  Licensed under the Apache License, Version 2.0 (the "License"):
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
  */

  /**
   * Builds annotations out of database source code by reading it from cache
   */

  /**
   * Parses an object or all objects of a specified type for database schema.
   * Results are returned in as a pipelined function.
   * @param a_object_owner schema name to be parsed
   * @param a_object_type type of object to be parsed
   * @param a_object_name name of object to be parsed - optional
   * @return array containing annotated objects along with annotations for each object (nested)
   */
  function get_annotated_objects(a_object_owner varchar2, a_object_type varchar2, a_object_name varchar2 := null) return ut_annotated_objects pipelined;

end ut_annotation_manager;
/
