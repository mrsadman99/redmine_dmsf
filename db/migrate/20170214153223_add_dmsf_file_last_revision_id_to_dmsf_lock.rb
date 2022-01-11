# encoding: utf-8
#
# Redmine plugin for Document Management System "Features"
#
# Copyright © 2011-22 Karel Pičman <karel.picman@kontron.com>
# Copyright © 2016-17 carlolars
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

class AddDmsfFileLastRevisionIdToDmsfLock < ActiveRecord::Migration[4.2]

  def up
    rename_column :dmsf_locks, :revision, :dmsf_file_last_revision_id
  end

  def down
    rename_column :dmsf_locks, :dmsf_file_last_revision_id, :revision
  end

end