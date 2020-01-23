#
# Copyright (C) 2011 - present Instructure, Inc.
#
# This file is part of Canvas.
#
# Canvas is free software: you can redistribute it and/or modify it under
# the terms of the GNU Affero General Public License as published by the Free
# Software Foundation, version 3 of the License.
#
# Canvas is distributed in the hope that it will be useful, but WITHOUT ANY
# WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR
# A PARTICULAR PURPOSE. See the GNU Affero General Public License for more
# details.
#
# You should have received a copy of the GNU Affero General Public License along
# with this program. If not, see <http://www.gnu.org/licenses/>.

class StringColumnsToText < ActiveRecord::Migration[4.2]
  tag :predeploy

  def self.up
    change_column :error_reports, :url, :text
    change_column :error_reports, :message, :text
    change_column :content_tags, :url, :text
    change_column :page_views, :user_agent, :text
  end

  def self.down
    change_column :error_reports, :url, :string
    change_column :error_reports, :message, :string
    change_column :content_tags, :url, :string
    change_column :page_views, :user_agent, :string
  end
end