import JSONAPIAdapter from '@ember-data/adapter/json-api';

export default class ApplicationAdapter extends JSONAPIAdapter {
  // Application specific overrides go here
  namespace = 'api/v1';

}