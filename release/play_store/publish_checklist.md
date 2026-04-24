# Publish Checklist

## Branch

Branch: branch/05-playstore-publish

Purpose: Move the app from technical release readiness into Google Play Store listing, policy, upload, and review readiness.

## Fixed app identity

App name: Bu mu, O mu?

Application ID: com.ofcode.wouldyouratherapp

Namespace: com.ofcode.wouldyouratherapp

Version name: 1.0.0

Version code: 1

Pubspec version: 1.0.0+1

Target SDK: 36

Min SDK: 24

## Release artifact

AAB path:

build/app/outputs/bundle/release/app-release.aab

AAB local size:

approx. 39M

Build command:

flutter build appbundle --release --no-tree-shake-icons

Release signing:

configured

Keystore:

local upload keystore

key.properties committed:

no

## Store listing

- [ ] Play Console app created
- [ ] App name entered
- [ ] Default language selected
- [ ] Short description entered
- [ ] Full description entered
- [ ] Category selected
- [ ] Tags selected where available
- [ ] Contact email entered
- [ ] Developer info checked

Recommended category:

Entertainment

Recommended short description:

İki seçenekli eğlenceli sorularla tarzını keşfet.

## Privacy policy

- [ ] Privacy policy draft prepared
- [ ] Effective date finalized
- [ ] Developer email finalized
- [ ] Privacy policy published at public URL
- [ ] Privacy policy URL entered in Play Console

Hosting options:

- Google Sites
- GitHub Pages
- Notion public page
- Personal website

Preferred quick options:

Google Sites or GitHub Pages

## Data Safety

- [ ] Data Safety form completed
- [ ] Data collected declared
- [ ] Data shared declared
- [ ] Encryption in transit checked
- [ ] Data deletion answer completed
- [ ] SDK/dependency warnings checked

Expected declaration:

- Data collected: No
- Data shared: No
- Ads: No
- Analytics: No
- Account creation: No
- Payments: No
- User-generated content: No
- Location: No
- Contacts: No
- Camera: No
- Microphone: No
- Storage: No

## App Content

- [ ] App access completed
- [ ] Ads declaration completed
- [ ] Target audience completed
- [ ] Content rating completed
- [ ] News app declaration completed
- [ ] Government app declaration completed
- [ ] Financial features declaration completed
- [ ] Health app declaration completed
- [ ] Data deletion section completed if shown

Expected answers:

- App access: No restricted access
- Ads: No
- Target audience: 13+
- News app: No
- Government app: No
- Financial features: No
- Health app: No

## Store graphics

- [ ] App icon ready
- [ ] Feature graphic ready
- [ ] Phone screenshots ready
- [ ] Screenshots reviewed for text overflow
- [ ] Debug banner absent
- [ ] Screenshots represent actual app flow

Required represented flow:

Home -> Quiz -> Result Profile -> Share / Replay / Home

## Release upload

- [ ] Play App Signing active
- [ ] AAB uploaded
- [ ] Version code checked
- [ ] Version name checked
- [ ] Package checked
- [ ] Target SDK checked
- [ ] Release notes entered

## Internal testing

- [ ] Internal testing release created
- [ ] AAB processed by Play Console
- [ ] No blocking errors
- [ ] Install from internal testing link checked if available
- [ ] App launch checked
- [ ] Home to Quiz checked
- [ ] Result checked
- [ ] Share checked
- [ ] Replay checked

## Production release

- [ ] Production draft created
- [ ] Countries selected
- [ ] Release notes added
- [ ] Review release screen checked
- [ ] Play Console errors resolved
- [ ] Warnings reviewed
- [ ] Submitted for review

Default country rollout decision:

Turkey first

Alternative:

All available countries, if Control Tower approves

## Final Play Console review checks

- [ ] Store listing has no missing fields
- [ ] App content sections complete
- [ ] Privacy policy URL accepted
- [ ] Data Safety complete
- [ ] Content rating complete
- [ ] Target audience complete
- [ ] Ads declaration complete
- [ ] Release signing issue absent
- [ ] Target SDK issue absent
- [ ] Permission declaration issue absent
- [ ] Data Safety mismatch absent
- [ ] No blocking errors

## Out of scope respected

- [ ] No backend added
- [ ] No Firebase added
- [ ] No login added
- [ ] No payment/subscription added
- [ ] No CMS added
- [ ] No analytics added
- [ ] No ads added
- [ ] No new feature added
- [ ] No applicationId change
- [ ] No signing redesign

## Final repo checks

- [ ] flutter analyze passes
- [ ] flutter test passes
- [ ] AAB exists
- [ ] Working tree clean
- [ ] Branch 5 handoff report prepared
