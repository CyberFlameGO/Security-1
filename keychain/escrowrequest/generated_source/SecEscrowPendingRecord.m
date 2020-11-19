// This file was automatically generated by protocompiler
// DO NOT EDIT!
// Compiled from SecEscrowPendingRecord.proto

#import "SecEscrowPendingRecord.h"
#import <ProtocolBuffer/PBConstants.h>
#import <ProtocolBuffer/PBHashUtil.h>
#import <ProtocolBuffer/PBDataReader.h>

#if !__has_feature(objc_arc)
# error This generated file depends on ARC but it is not enabled; turn on ARC, or use 'objc_use_arc' option to generate non-ARC code.
#endif

@implementation SecEscrowPendingRecord

- (BOOL)hasUuid
{
    return _uuid != nil;
}
@synthesize uuid = _uuid;
@synthesize certCached = _certCached;
- (void)setCertCached:(BOOL)v
{
    _has.certCached = YES;
    _certCached = v;
}
- (void)setHasCertCached:(BOOL)f
{
    _has.certCached = f;
}
- (BOOL)hasCertCached
{
    return _has.certCached != 0;
}
- (BOOL)hasSerializedPrerecord
{
    return _serializedPrerecord != nil;
}
@synthesize serializedPrerecord = _serializedPrerecord;
@synthesize lastCloudServicesTriggerTime = _lastCloudServicesTriggerTime;
- (void)setLastCloudServicesTriggerTime:(uint64_t)v
{
    _has.lastCloudServicesTriggerTime = YES;
    _lastCloudServicesTriggerTime = v;
}
- (void)setHasLastCloudServicesTriggerTime:(BOOL)f
{
    _has.lastCloudServicesTriggerTime = f;
}
- (BOOL)hasLastCloudServicesTriggerTime
{
    return _has.lastCloudServicesTriggerTime != 0;
}
@synthesize lastEscrowAttemptTime = _lastEscrowAttemptTime;
- (void)setLastEscrowAttemptTime:(uint64_t)v
{
    _has.lastEscrowAttemptTime = YES;
    _lastEscrowAttemptTime = v;
}
- (void)setHasLastEscrowAttemptTime:(BOOL)f
{
    _has.lastEscrowAttemptTime = f;
}
- (BOOL)hasLastEscrowAttemptTime
{
    return _has.lastEscrowAttemptTime != 0;
}
@synthesize uploadCompleted = _uploadCompleted;
- (void)setUploadCompleted:(BOOL)v
{
    _has.uploadCompleted = YES;
    _uploadCompleted = v;
}
- (void)setHasUploadCompleted:(BOOL)f
{
    _has.uploadCompleted = f;
}
- (BOOL)hasUploadCompleted
{
    return _has.uploadCompleted != 0;
}
@synthesize uploadRetries = _uploadRetries;
- (void)setUploadRetries:(uint64_t)v
{
    _has.uploadRetries = YES;
    _uploadRetries = v;
}
- (void)setHasUploadRetries:(BOOL)f
{
    _has.uploadRetries = f;
}
- (BOOL)hasUploadRetries
{
    return _has.uploadRetries != 0;
}
- (BOOL)hasAltDSID
{
    return _altDSID != nil;
}
@synthesize altDSID = _altDSID;
@synthesize triggerRequestTime = _triggerRequestTime;
- (void)setTriggerRequestTime:(uint64_t)v
{
    _has.triggerRequestTime = YES;
    _triggerRequestTime = v;
}
- (void)setHasTriggerRequestTime:(BOOL)f
{
    _has.triggerRequestTime = f;
}
- (BOOL)hasTriggerRequestTime
{
    return _has.triggerRequestTime != 0;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ %@", [super description], [self dictionaryRepresentation]];
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    if (self->_uuid)
    {
        [dict setObject:self->_uuid forKey:@"uuid"];
    }
    if (self->_has.certCached)
    {
        [dict setObject:[NSNumber numberWithBool:self->_certCached] forKey:@"certCached"];
    }
    if (self->_serializedPrerecord)
    {
        [dict setObject:self->_serializedPrerecord forKey:@"serializedPrerecord"];
    }
    if (self->_has.lastCloudServicesTriggerTime)
    {
        [dict setObject:[NSNumber numberWithUnsignedLongLong:self->_lastCloudServicesTriggerTime] forKey:@"lastCloudServicesTriggerTime"];
    }
    if (self->_has.lastEscrowAttemptTime)
    {
        [dict setObject:[NSNumber numberWithUnsignedLongLong:self->_lastEscrowAttemptTime] forKey:@"lastEscrowAttemptTime"];
    }
    if (self->_has.uploadCompleted)
    {
        [dict setObject:[NSNumber numberWithBool:self->_uploadCompleted] forKey:@"uploadCompleted"];
    }
    if (self->_has.uploadRetries)
    {
        [dict setObject:[NSNumber numberWithUnsignedLongLong:self->_uploadRetries] forKey:@"uploadRetries"];
    }
    if (self->_altDSID)
    {
        [dict setObject:self->_altDSID forKey:@"altDSID"];
    }
    if (self->_has.triggerRequestTime)
    {
        [dict setObject:[NSNumber numberWithUnsignedLongLong:self->_triggerRequestTime] forKey:@"triggerRequestTime"];
    }
    return dict;
}

BOOL SecEscrowPendingRecordReadFrom(__unsafe_unretained SecEscrowPendingRecord *self, __unsafe_unretained PBDataReader *reader) {
    while (PBReaderHasMoreData(reader)) {
        uint32_t tag = 0;
        uint8_t aType = 0;

        PBReaderReadTag32AndType(reader, &tag, &aType);

        if (PBReaderHasError(reader))
            break;

        if (aType == TYPE_END_GROUP) {
            break;
        }

        switch (tag) {

            case 1 /* uuid */:
            {
                NSString *new_uuid = PBReaderReadString(reader);
                self->_uuid = new_uuid;
            }
            break;
            case 2 /* certCached */:
            {
                self->_has.certCached = YES;
                self->_certCached = PBReaderReadBOOL(reader);
            }
            break;
            case 3 /* serializedPrerecord */:
            {
                NSData *new_serializedPrerecord = PBReaderReadData(reader);
                self->_serializedPrerecord = new_serializedPrerecord;
            }
            break;
            case 4 /* lastCloudServicesTriggerTime */:
            {
                self->_has.lastCloudServicesTriggerTime = YES;
                self->_lastCloudServicesTriggerTime = PBReaderReadUint64(reader);
            }
            break;
            case 5 /* lastEscrowAttemptTime */:
            {
                self->_has.lastEscrowAttemptTime = YES;
                self->_lastEscrowAttemptTime = PBReaderReadUint64(reader);
            }
            break;
            case 6 /* uploadCompleted */:
            {
                self->_has.uploadCompleted = YES;
                self->_uploadCompleted = PBReaderReadBOOL(reader);
            }
            break;
            case 7 /* uploadRetries */:
            {
                self->_has.uploadRetries = YES;
                self->_uploadRetries = PBReaderReadUint64(reader);
            }
            break;
            case 8 /* altDSID */:
            {
                NSString *new_altDSID = PBReaderReadString(reader);
                self->_altDSID = new_altDSID;
            }
            break;
            case 9 /* triggerRequestTime */:
            {
                self->_has.triggerRequestTime = YES;
                self->_triggerRequestTime = PBReaderReadUint64(reader);
            }
            break;
            default:
                if (!PBReaderSkipValueWithTag(reader, tag, aType))
                    return NO;
                break;
        }
    }
    return !PBReaderHasError(reader);
}

- (BOOL)readFrom:(PBDataReader *)reader
{
    return SecEscrowPendingRecordReadFrom(self, reader);
}
- (void)writeTo:(PBDataWriter *)writer
{
    /* uuid */
    {
        if (self->_uuid)
        {
            PBDataWriterWriteStringField(writer, self->_uuid, 1);
        }
    }
    /* certCached */
    {
        if (self->_has.certCached)
        {
            PBDataWriterWriteBOOLField(writer, self->_certCached, 2);
        }
    }
    /* serializedPrerecord */
    {
        if (self->_serializedPrerecord)
        {
            PBDataWriterWriteDataField(writer, self->_serializedPrerecord, 3);
        }
    }
    /* lastCloudServicesTriggerTime */
    {
        if (self->_has.lastCloudServicesTriggerTime)
        {
            PBDataWriterWriteUint64Field(writer, self->_lastCloudServicesTriggerTime, 4);
        }
    }
    /* lastEscrowAttemptTime */
    {
        if (self->_has.lastEscrowAttemptTime)
        {
            PBDataWriterWriteUint64Field(writer, self->_lastEscrowAttemptTime, 5);
        }
    }
    /* uploadCompleted */
    {
        if (self->_has.uploadCompleted)
        {
            PBDataWriterWriteBOOLField(writer, self->_uploadCompleted, 6);
        }
    }
    /* uploadRetries */
    {
        if (self->_has.uploadRetries)
        {
            PBDataWriterWriteUint64Field(writer, self->_uploadRetries, 7);
        }
    }
    /* altDSID */
    {
        if (self->_altDSID)
        {
            PBDataWriterWriteStringField(writer, self->_altDSID, 8);
        }
    }
    /* triggerRequestTime */
    {
        if (self->_has.triggerRequestTime)
        {
            PBDataWriterWriteUint64Field(writer, self->_triggerRequestTime, 9);
        }
    }
}

- (void)copyTo:(SecEscrowPendingRecord *)other
{
    if (_uuid)
    {
        other.uuid = _uuid;
    }
    if (self->_has.certCached)
    {
        other->_certCached = _certCached;
        other->_has.certCached = YES;
    }
    if (_serializedPrerecord)
    {
        other.serializedPrerecord = _serializedPrerecord;
    }
    if (self->_has.lastCloudServicesTriggerTime)
    {
        other->_lastCloudServicesTriggerTime = _lastCloudServicesTriggerTime;
        other->_has.lastCloudServicesTriggerTime = YES;
    }
    if (self->_has.lastEscrowAttemptTime)
    {
        other->_lastEscrowAttemptTime = _lastEscrowAttemptTime;
        other->_has.lastEscrowAttemptTime = YES;
    }
    if (self->_has.uploadCompleted)
    {
        other->_uploadCompleted = _uploadCompleted;
        other->_has.uploadCompleted = YES;
    }
    if (self->_has.uploadRetries)
    {
        other->_uploadRetries = _uploadRetries;
        other->_has.uploadRetries = YES;
    }
    if (_altDSID)
    {
        other.altDSID = _altDSID;
    }
    if (self->_has.triggerRequestTime)
    {
        other->_triggerRequestTime = _triggerRequestTime;
        other->_has.triggerRequestTime = YES;
    }
}

- (id)copyWithZone:(NSZone *)zone
{
    SecEscrowPendingRecord *copy = [[[self class] allocWithZone:zone] init];
    copy->_uuid = [_uuid copyWithZone:zone];
    if (self->_has.certCached)
    {
        copy->_certCached = _certCached;
        copy->_has.certCached = YES;
    }
    copy->_serializedPrerecord = [_serializedPrerecord copyWithZone:zone];
    if (self->_has.lastCloudServicesTriggerTime)
    {
        copy->_lastCloudServicesTriggerTime = _lastCloudServicesTriggerTime;
        copy->_has.lastCloudServicesTriggerTime = YES;
    }
    if (self->_has.lastEscrowAttemptTime)
    {
        copy->_lastEscrowAttemptTime = _lastEscrowAttemptTime;
        copy->_has.lastEscrowAttemptTime = YES;
    }
    if (self->_has.uploadCompleted)
    {
        copy->_uploadCompleted = _uploadCompleted;
        copy->_has.uploadCompleted = YES;
    }
    if (self->_has.uploadRetries)
    {
        copy->_uploadRetries = _uploadRetries;
        copy->_has.uploadRetries = YES;
    }
    copy->_altDSID = [_altDSID copyWithZone:zone];
    if (self->_has.triggerRequestTime)
    {
        copy->_triggerRequestTime = _triggerRequestTime;
        copy->_has.triggerRequestTime = YES;
    }
    return copy;
}

- (BOOL)isEqual:(id)object
{
    SecEscrowPendingRecord *other = (SecEscrowPendingRecord *)object;
    return [other isMemberOfClass:[self class]]
    &&
    ((!self->_uuid && !other->_uuid) || [self->_uuid isEqual:other->_uuid])
    &&
    ((self->_has.certCached && other->_has.certCached && ((self->_certCached && other->_certCached) || (!self->_certCached && !other->_certCached))) || (!self->_has.certCached && !other->_has.certCached))
    &&
    ((!self->_serializedPrerecord && !other->_serializedPrerecord) || [self->_serializedPrerecord isEqual:other->_serializedPrerecord])
    &&
    ((self->_has.lastCloudServicesTriggerTime && other->_has.lastCloudServicesTriggerTime && self->_lastCloudServicesTriggerTime == other->_lastCloudServicesTriggerTime) || (!self->_has.lastCloudServicesTriggerTime && !other->_has.lastCloudServicesTriggerTime))
    &&
    ((self->_has.lastEscrowAttemptTime && other->_has.lastEscrowAttemptTime && self->_lastEscrowAttemptTime == other->_lastEscrowAttemptTime) || (!self->_has.lastEscrowAttemptTime && !other->_has.lastEscrowAttemptTime))
    &&
    ((self->_has.uploadCompleted && other->_has.uploadCompleted && ((self->_uploadCompleted && other->_uploadCompleted) || (!self->_uploadCompleted && !other->_uploadCompleted))) || (!self->_has.uploadCompleted && !other->_has.uploadCompleted))
    &&
    ((self->_has.uploadRetries && other->_has.uploadRetries && self->_uploadRetries == other->_uploadRetries) || (!self->_has.uploadRetries && !other->_has.uploadRetries))
    &&
    ((!self->_altDSID && !other->_altDSID) || [self->_altDSID isEqual:other->_altDSID])
    &&
    ((self->_has.triggerRequestTime && other->_has.triggerRequestTime && self->_triggerRequestTime == other->_triggerRequestTime) || (!self->_has.triggerRequestTime && !other->_has.triggerRequestTime))
    ;
}

- (NSUInteger)hash
{
    return 0
    ^
    [self->_uuid hash]
    ^
    (self->_has.certCached ? PBHashInt((NSUInteger)self->_certCached) : 0)
    ^
    [self->_serializedPrerecord hash]
    ^
    (self->_has.lastCloudServicesTriggerTime ? PBHashInt((NSUInteger)self->_lastCloudServicesTriggerTime) : 0)
    ^
    (self->_has.lastEscrowAttemptTime ? PBHashInt((NSUInteger)self->_lastEscrowAttemptTime) : 0)
    ^
    (self->_has.uploadCompleted ? PBHashInt((NSUInteger)self->_uploadCompleted) : 0)
    ^
    (self->_has.uploadRetries ? PBHashInt((NSUInteger)self->_uploadRetries) : 0)
    ^
    [self->_altDSID hash]
    ^
    (self->_has.triggerRequestTime ? PBHashInt((NSUInteger)self->_triggerRequestTime) : 0)
    ;
}

- (void)mergeFrom:(SecEscrowPendingRecord *)other
{
    if (other->_uuid)
    {
        [self setUuid:other->_uuid];
    }
    if (other->_has.certCached)
    {
        self->_certCached = other->_certCached;
        self->_has.certCached = YES;
    }
    if (other->_serializedPrerecord)
    {
        [self setSerializedPrerecord:other->_serializedPrerecord];
    }
    if (other->_has.lastCloudServicesTriggerTime)
    {
        self->_lastCloudServicesTriggerTime = other->_lastCloudServicesTriggerTime;
        self->_has.lastCloudServicesTriggerTime = YES;
    }
    if (other->_has.lastEscrowAttemptTime)
    {
        self->_lastEscrowAttemptTime = other->_lastEscrowAttemptTime;
        self->_has.lastEscrowAttemptTime = YES;
    }
    if (other->_has.uploadCompleted)
    {
        self->_uploadCompleted = other->_uploadCompleted;
        self->_has.uploadCompleted = YES;
    }
    if (other->_has.uploadRetries)
    {
        self->_uploadRetries = other->_uploadRetries;
        self->_has.uploadRetries = YES;
    }
    if (other->_altDSID)
    {
        [self setAltDSID:other->_altDSID];
    }
    if (other->_has.triggerRequestTime)
    {
        self->_triggerRequestTime = other->_triggerRequestTime;
        self->_has.triggerRequestTime = YES;
    }
}

@end

