# Copyright 2021 Google Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

ASYNCBIGTABLE_VERSION := 0.4.3
ASYNCBIGTABLE := third_party/asyncbigtable/asyncbigtable-$(ASYNCBIGTABLE_VERSION)-jar-with-dependencies.jar
ASYNCBIGTABLE_BASE_URL := https://repo1.maven.org/maven2/com/pythian/opentsdb/asyncbigtable/0.4.3
$(ASYNCBIGTABLE): $(ASYNCBIGTABLE).md5
	set dummy "$(ASYNCBIGTABLE_BASE_URL)" "$(ASYNCBIGTABLE)"; shift; $(FETCH_DEPENDENCY)

THIRD_PARTY += $(ASYNCBIGTABLE)
