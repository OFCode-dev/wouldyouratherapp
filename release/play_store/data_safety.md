# Data Safety Notes

## Recommended Play Console answer

Does your app collect or share any of the required user data types?

Recommended answer: No

## Current app behavior

- Account creation: No
- Login: No
- Backend: No
- Analytics SDK: No
- Ads: No
- In-app purchases: No
- Subscriptions: No
- Payment information: No
- User-generated content: No
- Runtime user-facing permissions: No
- Location collection: No
- Contacts access: No
- Camera access: No
- Microphone access: No
- Photos or videos access: No
- Files or document access: No

## Quiz answers

Quiz answers are processed locally on the device to generate an entertainment result profile.

The app does not send quiz answers to a backend server.

## Sharing behavior

The share feature is user-initiated.

When the user taps the share action, the app opens the device native share sheet.

The user chooses the target app or service.

The app itself does not sell, transmit, or share personal user data with third parties.

## Data collected

Recommended declaration:

- Data collected: No

## Data shared

Recommended declaration:

- Data shared: No

## Encryption in transit

Recommended declaration:

- Not applicable if no data is collected or transmitted by the app.

## Data deletion

Recommended declaration:

- Not applicable because the app does not create accounts.
- Not applicable because the app does not store server-side personal user data.

## SDK / dependency warning check

Before final submission, check Play Console warnings for SDK or dependency-based data collection notices.

If Play Console flags a dependency as collecting or sharing data, update this document and the Play Console declaration to match the actual behavior.

Current expected dependency note:

- share_plus opens native platform share UI.
- The app does not send shared content to its own backend.
- The user controls the selected share target.
