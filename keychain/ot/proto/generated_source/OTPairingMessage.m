// This file was automatically generated by protocompiler
// DO NOT EDIT!
// Compiled from OTPairingMessage.proto

#import "OTPairingMessage.h"
#import <ProtocolBuffer/PBConstants.h>
#import <ProtocolBuffer/PBHashUtil.h>
#import <ProtocolBuffer/PBDataReader.h>

#import "OTApplicantToSponsorRound2M1.h"
#import "OTSponsorToApplicantRound1M2.h"
#import "OTSponsorToApplicantRound2M2.h"
#import "OTSupportOctagonMessage.h"
#import "OTSupportSOSMessage.h"

#if !__has_feature(objc_arc)
# error This generated file depends on ARC but it is not enabled; turn on ARC, or use 'objc_use_arc' option to generate non-ARC code.
#endif

@implementation OTPairingMessage

- (BOOL)hasEpoch
{
    return _epoch != nil;
}
@synthesize epoch = _epoch;
- (BOOL)hasPrepare
{
    return _prepare != nil;
}
@synthesize prepare = _prepare;
- (BOOL)hasVoucher
{
    return _voucher != nil;
}
@synthesize voucher = _voucher;
- (BOOL)hasSupportsOctagon
{
    return _supportsOctagon != nil;
}
@synthesize supportsOctagon = _supportsOctagon;
- (BOOL)hasSupportsSOS
{
    return _supportsSOS != nil;
}
@synthesize supportsSOS = _supportsSOS;

- (NSString *)description
{
    return [NSString stringWithFormat:@"%@ %@", [super description], [self dictionaryRepresentation]];
}

- (NSDictionary *)dictionaryRepresentation
{
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    if (self->_epoch)
    {
        [dict setObject:[_epoch dictionaryRepresentation] forKey:@"epoch"];
    }
    if (self->_prepare)
    {
        [dict setObject:[_prepare dictionaryRepresentation] forKey:@"prepare"];
    }
    if (self->_voucher)
    {
        [dict setObject:[_voucher dictionaryRepresentation] forKey:@"voucher"];
    }
    if (self->_supportsOctagon)
    {
        [dict setObject:[_supportsOctagon dictionaryRepresentation] forKey:@"supportsOctagon"];
    }
    if (self->_supportsSOS)
    {
        [dict setObject:[_supportsSOS dictionaryRepresentation] forKey:@"supportsSOS"];
    }
    return dict;
}

BOOL OTPairingMessageReadFrom(__unsafe_unretained OTPairingMessage *self, __unsafe_unretained PBDataReader *reader) {
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

            case 1 /* epoch */:
            {
                OTSponsorToApplicantRound1M2 *new_epoch = [[OTSponsorToApplicantRound1M2 alloc] init];
                self->_epoch = new_epoch;
                PBDataReaderMark mark_epoch;
                BOOL markError = !PBReaderPlaceMark(reader, &mark_epoch);
                if (markError)
                {
                    return NO;
                }
                BOOL inError = !OTSponsorToApplicantRound1M2ReadFrom(new_epoch, reader);
                if (inError)
                {
                    return NO;
                }
                PBReaderRecallMark(reader, &mark_epoch);
            }
            break;
            case 2 /* prepare */:
            {
                OTApplicantToSponsorRound2M1 *new_prepare = [[OTApplicantToSponsorRound2M1 alloc] init];
                self->_prepare = new_prepare;
                PBDataReaderMark mark_prepare;
                BOOL markError = !PBReaderPlaceMark(reader, &mark_prepare);
                if (markError)
                {
                    return NO;
                }
                BOOL inError = !OTApplicantToSponsorRound2M1ReadFrom(new_prepare, reader);
                if (inError)
                {
                    return NO;
                }
                PBReaderRecallMark(reader, &mark_prepare);
            }
            break;
            case 3 /* voucher */:
            {
                OTSponsorToApplicantRound2M2 *new_voucher = [[OTSponsorToApplicantRound2M2 alloc] init];
                self->_voucher = new_voucher;
                PBDataReaderMark mark_voucher;
                BOOL markError = !PBReaderPlaceMark(reader, &mark_voucher);
                if (markError)
                {
                    return NO;
                }
                BOOL inError = !OTSponsorToApplicantRound2M2ReadFrom(new_voucher, reader);
                if (inError)
                {
                    return NO;
                }
                PBReaderRecallMark(reader, &mark_voucher);
            }
            break;
            case 5 /* supportsOctagon */:
            {
                OTSupportOctagonMessage *new_supportsOctagon = [[OTSupportOctagonMessage alloc] init];
                self->_supportsOctagon = new_supportsOctagon;
                PBDataReaderMark mark_supportsOctagon;
                BOOL markError = !PBReaderPlaceMark(reader, &mark_supportsOctagon);
                if (markError)
                {
                    return NO;
                }
                BOOL inError = !OTSupportOctagonMessageReadFrom(new_supportsOctagon, reader);
                if (inError)
                {
                    return NO;
                }
                PBReaderRecallMark(reader, &mark_supportsOctagon);
            }
            break;
            case 6 /* supportsSOS */:
            {
                OTSupportSOSMessage *new_supportsSOS = [[OTSupportSOSMessage alloc] init];
                self->_supportsSOS = new_supportsSOS;
                PBDataReaderMark mark_supportsSOS;
                BOOL markError = !PBReaderPlaceMark(reader, &mark_supportsSOS);
                if (markError)
                {
                    return NO;
                }
                BOOL inError = !OTSupportSOSMessageReadFrom(new_supportsSOS, reader);
                if (inError)
                {
                    return NO;
                }
                PBReaderRecallMark(reader, &mark_supportsSOS);
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
    return OTPairingMessageReadFrom(self, reader);
}
- (void)writeTo:(PBDataWriter *)writer
{
    /* epoch */
    {
        if (self->_epoch != nil)
        {
            PBDataWriterWriteSubmessage(writer, self->_epoch, 1);
        }
    }
    /* prepare */
    {
        if (self->_prepare != nil)
        {
            PBDataWriterWriteSubmessage(writer, self->_prepare, 2);
        }
    }
    /* voucher */
    {
        if (self->_voucher != nil)
        {
            PBDataWriterWriteSubmessage(writer, self->_voucher, 3);
        }
    }
    /* supportsOctagon */
    {
        if (self->_supportsOctagon != nil)
        {
            PBDataWriterWriteSubmessage(writer, self->_supportsOctagon, 5);
        }
    }
    /* supportsSOS */
    {
        if (self->_supportsSOS != nil)
        {
            PBDataWriterWriteSubmessage(writer, self->_supportsSOS, 6);
        }
    }
}

- (void)copyTo:(OTPairingMessage *)other
{
    if (_epoch)
    {
        other.epoch = _epoch;
    }
    if (_prepare)
    {
        other.prepare = _prepare;
    }
    if (_voucher)
    {
        other.voucher = _voucher;
    }
    if (_supportsOctagon)
    {
        other.supportsOctagon = _supportsOctagon;
    }
    if (_supportsSOS)
    {
        other.supportsSOS = _supportsSOS;
    }
}

- (id)copyWithZone:(NSZone *)zone
{
    OTPairingMessage *copy = [[[self class] allocWithZone:zone] init];
    copy->_epoch = [_epoch copyWithZone:zone];
    copy->_prepare = [_prepare copyWithZone:zone];
    copy->_voucher = [_voucher copyWithZone:zone];
    copy->_supportsOctagon = [_supportsOctagon copyWithZone:zone];
    copy->_supportsSOS = [_supportsSOS copyWithZone:zone];
    return copy;
}

- (BOOL)isEqual:(id)object
{
    OTPairingMessage *other = (OTPairingMessage *)object;
    return [other isMemberOfClass:[self class]]
    &&
    ((!self->_epoch && !other->_epoch) || [self->_epoch isEqual:other->_epoch])
    &&
    ((!self->_prepare && !other->_prepare) || [self->_prepare isEqual:other->_prepare])
    &&
    ((!self->_voucher && !other->_voucher) || [self->_voucher isEqual:other->_voucher])
    &&
    ((!self->_supportsOctagon && !other->_supportsOctagon) || [self->_supportsOctagon isEqual:other->_supportsOctagon])
    &&
    ((!self->_supportsSOS && !other->_supportsSOS) || [self->_supportsSOS isEqual:other->_supportsSOS])
    ;
}

- (NSUInteger)hash
{
    return 0
    ^
    [self->_epoch hash]
    ^
    [self->_prepare hash]
    ^
    [self->_voucher hash]
    ^
    [self->_supportsOctagon hash]
    ^
    [self->_supportsSOS hash]
    ;
}

- (void)mergeFrom:(OTPairingMessage *)other
{
    if (self->_epoch && other->_epoch)
    {
        [self->_epoch mergeFrom:other->_epoch];
    }
    else if (!self->_epoch && other->_epoch)
    {
        [self setEpoch:other->_epoch];
    }
    if (self->_prepare && other->_prepare)
    {
        [self->_prepare mergeFrom:other->_prepare];
    }
    else if (!self->_prepare && other->_prepare)
    {
        [self setPrepare:other->_prepare];
    }
    if (self->_voucher && other->_voucher)
    {
        [self->_voucher mergeFrom:other->_voucher];
    }
    else if (!self->_voucher && other->_voucher)
    {
        [self setVoucher:other->_voucher];
    }
    if (self->_supportsOctagon && other->_supportsOctagon)
    {
        [self->_supportsOctagon mergeFrom:other->_supportsOctagon];
    }
    else if (!self->_supportsOctagon && other->_supportsOctagon)
    {
        [self setSupportsOctagon:other->_supportsOctagon];
    }
    if (self->_supportsSOS && other->_supportsSOS)
    {
        [self->_supportsSOS mergeFrom:other->_supportsSOS];
    }
    else if (!self->_supportsSOS && other->_supportsSOS)
    {
        [self setSupportsSOS:other->_supportsSOS];
    }
}

@end

