import type {CapacitorAttributionPlugin} from './definitions';
import {registerPlugin} from '@capacitor/core';

const CapacitorAttribution = registerPlugin<CapacitorAttributionPlugin>('CapacitorAttributionPlugin');

export {CapacitorAttribution};
