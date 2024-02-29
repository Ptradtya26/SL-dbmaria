// SL-dbmaria/index.js

const axios = require('axios');
const cheerio = require('cheerio');
const moment = require('moment');
const uuid = require('uuid');

class SLDbMaria {
  constructor(url) {
    this.url = url;
  }

  async fetchData() {
    const response = await axios.get(this.url);
    return response.data;
  }

  parseHTML(html) {
    const $ = cheerio.load(html);

    const articles = [];
    
    $('article').each((index, element) => {
      const title = $(element).find('h2').text();
      const publicationDate = $(element).find('.publication-date').text();
      const author = $(element).find('.author').text();

      articles.push({
        title,
        publicationDate,
        author
      });
    });

    return {
      articles,
      timestamp: moment().format('MMMM Do YYYY, h:mm:ss a')
    };
  }

  getCurrentTime() {
    return moment().format('MMMM Do YYYY, h:mm:ss a');
  }

  generateUniqueId() {
    return uuid.v4();
  }
}

module.exports = SLDbMaria;
