# tapstamp

A new Flutter project.

# Data Models

## User
- **userId**: `String`
- **stamps**: `List<stampId>`

## Stamp
- **stampId**: `String`
- **timestamp**: `String`
- **shopId**: `String`

## Shop
- **shopId**: `String`
- **shopName**: `String`
- **address**: `String`
- **cards**: `List<cardId>`

## Card
- **cardId**: `String`
- **reward**: `String`
- **rewardAmount**: `int`
- **imageType**: `enum` (`coffee`, `soup`, `smoothie`)