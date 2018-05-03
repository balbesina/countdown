import '../stylesheets/home';
import LetsRock from '../images/lets_rock.png';
import moment from 'moment';

class PartyTimer {
  constructor() {
    this.counter = $('.counter');
    this.at = moment(this.counter.data('at'));
  }

  start() {
    this.updateTimer();
    this.interval = setInterval(() => this.updateTimer(), 1000);
  }

  updateTimer() {
    const diff = this.at.diff(moment());
    if (diff < 0) {
      return this.stop();
    }

    const days = moment.duration(diff).days();
    let newCounter = '';
    if (days > 0) {
      newCounter = `${days} days, `
    }
    newCounter += moment.utc(diff).format('HH:mm:ss');

    this.counter.text(newCounter)
  }

  stop() {
    clearInterval(this.interval);
    this.counter.replaceWith(
      '<div class="text-center">' +
        `<img src="${LetsRock}" alt="Lets Rock!" />` +
      '</div>'
    )
  }
}

$(() => new PartyTimer().start());