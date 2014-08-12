/* ========================================================================
 * Copyright 2014 testers
 *
 * Licensed under the MIT, The MIT License (MIT)
 * Copyright (c) 2014 testers

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
 * ========================================================================


Source generated by CrudMaker version 1.0.0.201408112050

*/
define(['model/stadiumModel'], function(stadiumModel) {
    App.Controller._StadiumController = Backbone.View.extend({
        initialize: function(options) {
            this.modelClass = options.modelClass;
            this.listModelClass = options.listModelClass;
            this.showEdit = true;
            this.showDelete = true;
            this.editTemplate = _.template($('#stadium').html());
            this.listTemplate = _.template($('#stadiumList').html());
            if (!options || !options.componentId) {
                this.componentId = _.random(0, 100) + "";
            }else{
				this.componentId = options.componentId;
		    }
            var self = this;
            if(self.postInit){
            	self.postInit(options);
            }
        },
        create: function() {
            if (App.Utils.eventExists(this.componentId + '-' +'instead-stadium-create')) {
                Backbone.trigger(this.componentId + '-' + 'instead-stadium-create', {view: this});
            } else {
                Backbone.trigger(this.componentId + '-' + 'pre-stadium-create', {view: this});
                this.currentStadiumModel = new this.modelClass({componentId: this.componentId});
                this._renderEdit();
                Backbone.trigger(this.componentId + '-' + 'post-stadium-create', {view: this});
            }
        },
        list: function(params) {
            if (params) {
                var data = params.data;
            }
            if (App.Utils.eventExists(this.componentId + '-' +'instead-stadium-list')) {
                Backbone.trigger(this.componentId + '-' + 'instead-stadium-list', {view: this, data: data});
            } else {
                Backbone.trigger(this.componentId + '-' + 'pre-stadium-list', {view: this, data: data});
                var self = this;
				if(!this.stadiumModelList){
                 this.stadiumModelList = new this.listModelClass();
				}
                this.stadiumModelList.fetch({
                    data: data,
                    success: function() {
                        self._renderList();
                        Backbone.trigger(self.componentId + '-' + 'post-stadium-list', {view: self});
                    },
                    error: function(mode, error) {
                        Backbone.trigger(self.componentId + '-' + 'error', {event: 'stadium-list', view: self, error: error});
                    }
                });
            }
        },
        edit: function(params) {
            var id = params.id;
            var data = params.data;
            if (App.Utils.eventExists(this.componentId + '-' +'instead-stadium-edit')) {
                Backbone.trigger(this.componentId + '-' + 'instead-stadium-edit', {view: this, id: id, data: data});
            } else {
                Backbone.trigger(this.componentId + '-' + 'pre-stadium-edit', {view: this, id: id, data: data});
                if (this.stadiumModelList) {
                    this.currentStadiumModel = this.stadiumModelList.get(id);
                    this.currentStadiumModel.set('componentId',this.componentId); 
                    this._renderEdit();
                    Backbone.trigger(this.componentId + '-' + 'post-stadium-edit', {view: this, id: id, data: data});
                } else {
                    var self = this;
                    this.currentStadiumModel = new this.modelClass({id: id});
                    this.currentStadiumModel.fetch({
                        data: data,
                        success: function() {
                            self.currentStadiumModel.set('componentId',self.componentId); 
                            self._renderEdit();
                            Backbone.trigger(self.componentId + '-' + 'post-stadium-edit', {view: this, id: id, data: data});
                        },
                        error: function() {
                            Backbone.trigger(self.componentId + '-' + 'error', {event: 'stadium-edit', view: self, id: id, data: data, error: error});
                        }
                    });
                }
            }
        },
        destroy: function(params) {
            var id = params.id;
            var self = this;
            if (App.Utils.eventExists(this.componentId + '-' +'instead-stadium-delete')) {
                Backbone.trigger(this.componentId + '-' + 'instead-stadium-delete', {view: this, id: id});
            } else {
                Backbone.trigger(this.componentId + '-' + 'pre-stadium-delete', {view: this, id: id});
                var deleteModel;
                if (this.stadiumModelList) {
                    deleteModel = this.stadiumModelList.get(id);
                } else {
                    deleteModel = new this.modelClass({id: id});
                }
                deleteModel.destroy({
                    success: function() {
                        Backbone.trigger(self.componentId + '-' + 'post-stadium-delete', {view: self, model: deleteModel});
                    },
                    error: function() {
                        Backbone.trigger(self.componentId + '-' + 'error', {event: 'stadium-delete', view: self, error: error});
                    }
                });
            }
        },
		_loadRequiredComponentsData: function(callBack) {
            var self = this;
            var listReady = _.after(1, function(){
                callBack();
            }); 
            var listDataReady = function(componentName, model, aliasModel){
            if(aliasModel){
                self[aliasModel] = model;
            } else {
            	self[componentName] = model;
            }    
                listReady();
            };
				App.Utils.getComponentList('cityComponent',listDataReady,'cityComponent');
        },
        save: function() {
            var self = this;
            var model = $('#' + this.componentId + '-stadiumForm').serializeObject();
            if (App.Utils.eventExists(this.componentId + '-' +'instead-stadium-save')) {
                Backbone.trigger(this.componentId + '-' + 'instead-stadium-save', {view: this, model : model});
            } else {
                Backbone.trigger(this.componentId + '-' + 'pre-stadium-save', {view: this, model : model});
                this.currentStadiumModel.set(model);
                this.currentStadiumModel.save({},
                        {
                            success: function(model) {
                                Backbone.trigger(self.componentId + '-' + 'post-stadium-save', {model: self.currentStadiumModel});
                            },
                            error: function(error) {
                                Backbone.trigger(self.componentId + '-' + 'error', {event: 'stadium-save', view: self, error: error});
                            }
                        });
            }
        },
        _renderList: function() {
            var self = this;
            this.$el.slideUp("fast", function() {
                self.$el.html(self.listTemplate({stadiums: self.stadiumModelList.models, componentId: self.componentId, showEdit : self.showEdit , showDelete : self.showDelete}));
                self.$el.slideDown("fast");
            });
        },
        _renderEdit: function() {
            var self = this;
            this.$el.slideUp("fast", function() {
                self.$el.html(self.editTemplate({stadium: self.currentStadiumModel, componentId: self.componentId , showEdit : self.showEdit , showDelete : self.showDelete
 
				    ,city: self.cityComponent
 
				}));
                self.$el.slideDown("fast");
            });
        }
    });
    return App.Controller._StadiumController;
});