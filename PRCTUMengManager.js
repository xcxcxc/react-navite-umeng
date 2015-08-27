'use strict';

var RCTDeviceEventEmitter = require('RCTDeviceEventEmitter');
var PRCTUMengManager = require('NativeModules').PRCTUMengManager;


var UMeng = {

	logPageView: function(pageName, seconds) {
		PRCTUMengManager.logPageView(pageName, seconds);
	},

	beginLogPageView: function(pageName) {
		PRCTUMengManager.beginLogPageView(pageName);
	},

	endLogPageView: function(pageName) {
		PRCTUMengManager.endLogPageView(pageName);
	},

	event: function(eventId) {
		PRCTUMengManager.event(eventId);
	},

	eventLabel: function(eventId, label) {
		PRCTUMengManager.eventLabel(eventId, label);
	},

	eventAttributes: function(eventId, attributes) {
		PRCTUMengManager.eventAttributes(eventId, attributes);
	},

	eventAttributesCounter: function(eventId, attributes, number) {
		PRCTUMengManager.eventAttributesCounter(eventId, attributes, number);
	},

	beginEvent: function(eventId) {
		PRCTUMengManager.beginEvent(eventId);
	},

	endEvent: function(eventId) {
		PRCTUMengManager.endEvent(eventId);
	},

	beginEventLabel: function(eventId, label) {
		PRCTUMengManager.beginEventLabel(eventId, label);
	},

	endEventLabel: function(eventId, label) {
		PRCTUMengManager.endEventLabel(eventId, label);
	},

	beginEventPrimarykeyAttributes: function(eventId, keyName, attributes) {
		PRCTUMengManager.beginEventPrimarykeyAttributes(eventId, keyName, attributes);
	},

	endEventPrimarykey: function(eventId, keyName) {
		PRCTUMengManager.endEventPrimarykey(eventId, keyName);
	},

	eventDurations: function(eventId, millisecond) {
		PRCTUMengManager.eventDurations(eventId, millisecond);
	},

	eventLabelDurations: function(eventId, attributes, millisecond) {
		PRCTUMengManager.eventLabelDurations(eventId, attributes, millisecond);
	},

	getConfigParams: function(key, callback: Function) {
		PRCTUMengManager.getConfigParams(key, callback);
	},

	getConfigParamsWithCallback: function(callback: Function) {
		PRCTUMengManager.getConfigParamsWithCallback(callback);
	},

	getAdURLWithCallback: function(callback: Function) {
		PRCTUMengManager.getAdURLWithCallback(callback);
	},

	setLocation: function(latitude, longitude) {
		PRCTUMengManager.setLocation(latitude, longitude);
	},

	isJailbrokenWithCallback: function(callback: Function) {
		PRCTUMengManager.isJailbrokenWithCallback(callback);
	},

	isPiratedWithCallback: function(callback: Function) {
		PRCTUMengManager.isPiratedWithCallback(callback);
	},

	checkUpdate: function() {
		PRCTUMengManager.checkUpdate();
	},

	checkUpdateTitle: function(title, cancelTitle, otherTitle) {
		PRCTUMengManager.checkUpdateTitle(title, cancelTitle, otherTitle);
	},

	updateOnlineConfig: function() {
		PRCTUMengManager.updateOnlineConfig();
	},

};


module.exports = UMeng;