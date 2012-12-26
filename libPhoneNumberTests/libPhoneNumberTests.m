
//
//  libPhoneNumberTests.m
//  libPhoneNumberTests
//
//  Created by ishtar on 12. 12. 11..
//  Copyright (c) 2012년 NHN. All rights reserved.
//

#import "libPhoneNumberTests.h"

#import "NBPhoneMetaData.h"
#import "NBPhoneNumber.h"
#import "NBPhoneNumberDesc.h"
#import "NBPhoneNumberManager.h"
#import "NBNumberFormat.h"


@implementation libPhoneNumberTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testPhoneNumbers
{
    NBPhoneNumberManager *phoneUtil = [NBPhoneNumberManager sharedInstance];
    
    // Set up some test numbers to re-use.
    // TODO: Rewrite this as static functions that return new numbers each time to
    // avoid any risk of accidental changes to mutable static state affecting many
    // tests.
    
    NBPhoneNumber *ALPHA_NUMERIC_NUMBER = [[NBPhoneNumber alloc] init];
    ALPHA_NUMERIC_NUMBER.countryCode = @"1";
    ALPHA_NUMERIC_NUMBER.nationalNumber = @"80074935247";
    
    
    
    NBPhoneNumber *AR_MOBILE = [[NBPhoneNumber alloc] init];
    AR_MOBILE.countryCode = @"54";
    AR_MOBILE.nationalNumber = @"91187654321";
    
    
    
    NBPhoneNumber *AR_NUMBER = [[NBPhoneNumber alloc] init];
    AR_NUMBER.countryCode = @"54";
    AR_NUMBER.nationalNumber = @"1187654321";
    
    
    
    NBPhoneNumber *AU_NUMBER = [[NBPhoneNumber alloc] init];
    AU_NUMBER.countryCode = @"61";
    AU_NUMBER.nationalNumber = @"236618300";
    
    
    
    NBPhoneNumber *BS_MOBILE = [[NBPhoneNumber alloc] init];
    BS_MOBILE.countryCode = @"1";
    BS_MOBILE.nationalNumber = @"2423570000";
    
    
    
    NBPhoneNumber *BS_NUMBER = [[NBPhoneNumber alloc] init];
    BS_NUMBER.countryCode = @"1";
    BS_NUMBER.nationalNumber = @"2423651234";
    
    
    // Note that this is the same as the example number for DE in the metadata.
    
    NBPhoneNumber *DE_NUMBER = [[NBPhoneNumber alloc] init];
    DE_NUMBER.countryCode = @"49";
    DE_NUMBER.nationalNumber = @"30123456";
    
    
    
    NBPhoneNumber *DE_SHORT_NUMBER = [[NBPhoneNumber alloc] init];
    DE_SHORT_NUMBER.countryCode = @"49";
    DE_SHORT_NUMBER.nationalNumber = @"1234";
    
    
    
    NBPhoneNumber *GB_MOBILE = [[NBPhoneNumber alloc] init];
    GB_MOBILE.countryCode = @"44";
    GB_MOBILE.nationalNumber = @"7912345678";
    
    
    
    NBPhoneNumber *GB_NUMBER = [[NBPhoneNumber alloc] init];
    GB_NUMBER.countryCode = @"44";
    GB_NUMBER.nationalNumber = @"2070313000";
    
    
    
    NBPhoneNumber *IT_MOBILE = [[NBPhoneNumber alloc] init];
    IT_MOBILE.countryCode = @"39";
    IT_MOBILE.nationalNumber = @"345678901";
    
    
    
    NBPhoneNumber *IT_NUMBER = [[NBPhoneNumber alloc] init];
    IT_NUMBER.countryCode = @"39";
    IT_NUMBER.nationalNumber = @"236618300";
    IT_NUMBER.italianLeadingZero = NB_YES;
    
    
    
    NBPhoneNumber *JP_STAR_NUMBER = [[NBPhoneNumber alloc] init];
    JP_STAR_NUMBER.countryCode = @"81";
    JP_STAR_NUMBER.nationalNumber = @"2345";
    
    
    // Numbers to test the formatting rules from Mexico.
    
    NBPhoneNumber *MX_MOBILE1 = [[NBPhoneNumber alloc] init];
    MX_MOBILE1.countryCode = @"52";
    MX_MOBILE1.nationalNumber = @"12345678900";
    
    
    
    NBPhoneNumber *MX_MOBILE2 = [[NBPhoneNumber alloc] init];
    MX_MOBILE2.countryCode = @"52";
    MX_MOBILE2.nationalNumber = @"15512345678";
    
    
    
    NBPhoneNumber *MX_NUMBER1 = [[NBPhoneNumber alloc] init];
    MX_NUMBER1.countryCode = @"52";
    MX_NUMBER1.nationalNumber = @"3312345678";
    
    
    
    NBPhoneNumber *MX_NUMBER2 = [[NBPhoneNumber alloc] init];
    MX_NUMBER2.countryCode = @"52";
    MX_NUMBER2.nationalNumber = @"8211234567";
    
    
    
    NBPhoneNumber *NZ_NUMBER = [[NBPhoneNumber alloc] init];
    NZ_NUMBER.countryCode = @"64";
    NZ_NUMBER.nationalNumber = @"33316005";
    
    
    
    NBPhoneNumber *SG_NUMBER = [[NBPhoneNumber alloc] init];
    SG_NUMBER.countryCode = @"65";
    SG_NUMBER.nationalNumber = @"65218000";
    
    
    // A too-long and hence invalid US number.
    
    NBPhoneNumber *US_LONG_NUMBER = [[NBPhoneNumber alloc] init];
    US_LONG_NUMBER.countryCode = @"1";
    US_LONG_NUMBER.nationalNumber = @"65025300001";
    
    
    
    NBPhoneNumber *US_NUMBER = [[NBPhoneNumber alloc] init];
    US_NUMBER.countryCode = @"1";
    US_NUMBER.nationalNumber = @"6502530000";
    
    
    
    NBPhoneNumber *US_PREMIUM = [[NBPhoneNumber alloc] init];
    US_PREMIUM.countryCode = @"1";
    US_PREMIUM.nationalNumber = @"9002530000";
    
    
    // Too short, but still possible US numbers.
    
    NBPhoneNumber *US_LOCAL_NUMBER = [[NBPhoneNumber alloc] init];
    US_LOCAL_NUMBER.countryCode = @"1";
    US_LOCAL_NUMBER.nationalNumber = @"2530000";
    
    
    
    NBPhoneNumber *US_SHORT_BY_ONE_NUMBER = [[NBPhoneNumber alloc] init];
    US_SHORT_BY_ONE_NUMBER.countryCode = @"1";
    US_SHORT_BY_ONE_NUMBER.nationalNumber = @"650253000";
    
    
    
    NBPhoneNumber *US_TOLLFREE = [[NBPhoneNumber alloc] init];
    US_TOLLFREE.countryCode = @"1";
    US_TOLLFREE.nationalNumber = @"8002530000";
    
    
    
    NBPhoneNumber *US_SPOOF = [[NBPhoneNumber alloc] init];
    US_SPOOF.countryCode = @"1";
    US_SPOOF.nationalNumber = @"0";
    
    
    
    NBPhoneNumber *US_SPOOF_WITH_RAW_INPUT = [[NBPhoneNumber alloc] init];
    US_SPOOF_WITH_RAW_INPUT.countryCode = @"1";
    US_SPOOF_WITH_RAW_INPUT.nationalNumber = @"0";
    US_SPOOF_WITH_RAW_INPUT.rawInput = @"000-000-0000";
    
    
    
    NBPhoneNumber *INTERNATIONAL_TOLL_FREE = [[NBPhoneNumber alloc] init];
    INTERNATIONAL_TOLL_FREE.countryCode = @"800";
    INTERNATIONAL_TOLL_FREE.nationalNumber = @"12345678";
    
    
    // We set this to be the same length as numbers for the other non-geographical
    // country prefix that we have in our test metadata. However, this is not
    // considered valid because they differ in their country calling code.
    
    NBPhoneNumber *INTERNATIONAL_TOLL_FREE_TOO_LONG = [[NBPhoneNumber alloc] init];
    INTERNATIONAL_TOLL_FREE_TOO_LONG.countryCode = @"800";
    INTERNATIONAL_TOLL_FREE_TOO_LONG.nationalNumber = @"123456789";
    
    
    
    NBPhoneNumber *UNIVERSAL_PREMIUM_RATE = [[NBPhoneNumber alloc] init];
    UNIVERSAL_PREMIUM_RATE.countryCode = @"979";
    UNIVERSAL_PREMIUM_RATE.nationalNumber = @"123456789";
    
    
    
    NBPhoneNumber *UNKNOWN_COUNTRY_CODE_NO_RAW_INPUT = [[NBPhoneNumber alloc] init];
    UNKNOWN_COUNTRY_CODE_NO_RAW_INPUT.countryCode = @"2";
    UNKNOWN_COUNTRY_CODE_NO_RAW_INPUT.nationalNumber = @"12345";
 

#pragma mark - simple test
    NSError *error = nil;
    NSString *pattern = @"(?:2(?:0[1-35-9]|1[02-9]|2[4589]|3[149]|4[08]|5[1-46]|6[0279]|7[06]|8[13])|3(?:0[1-57-9]|1[02-9]|2[0135]|3[014679]|47|5[12]|6[01]|8[056])|4(?:0[124-9]|1[02-579]|2[3-5]|3[0245]|4[0235]|58|69|7[0589]|8[04])|5(?:0[1-57-9]|1[0235-8]|20|3[0149]|4[01]|5[19]|6[1-37]|7[013-5]|8[056])|6(?:0[1-35-9]|1[024-9]|2[036]|3[016]|4[16]|5[017]|6[0-279]|78|8[12])|7(?:0[1-46-8]|1[02-9]|2[047]|3[124]|4[07]|5[47]|6[02359]|7[02-59]|8[156])|8(?:0[1-68]|1[02-8]|28|3[0-25]|4[3578]|5[06-9]|6[02-5]|7[028])|9(?:0[1346-9]|1[02-9]|2[0589]|3[1678]|4[0179]|5[1246]|7[0-3589]|8[0459]))[2-9]\\d{6}";
    
    NSString *sourceString = @"2015550123";
    
    NSRegularExpression *currentPattern = [NSRegularExpression regularExpressionWithPattern:pattern options:0 error:&error];
    NSArray *matches = [currentPattern matchesInString:sourceString options:0 range:NSMakeRange(0, sourceString.length)];
    
    for(NSTextCheckingResult *match in matches)
    {
        NSString *subString = [sourceString substringWithRange:match.range];
        NSLog(@"[%@]", subString);
    }
    
    
#pragma mark - testGetInstanceLoadUSMetadata
    NBPhoneMetaData *metadata = [phoneUtil getMetadataForRegion:@"US"];

    NSLog(@"---%@---", metadata);
    STAssertEqualObjects(@"US", metadata.codeID, nil);
    STAssertEqualObjects(@"1", metadata.countryCode, nil);
    STAssertEqualObjects(@"011", metadata.internationalPrefix, nil);
    STAssertTrue(metadata.nationalPrefix != nil, nil);
    STAssertEquals(2, (int)[metadata.numberFormats count], nil);
    STAssertEqualObjects(@"(\\d{3})(\\d{3})(\\d{4})", ((NBNumberFormat*)metadata.numberFormats[1]).pattern, nil);
    STAssertEqualObjects(@"$1 $2 $3", ((NBNumberFormat*)metadata.numberFormats[1]).format, nil);
    STAssertEqualObjects(@"[13-689]\\d{9}|2[0-35-9]\\d{8}", metadata.generalDesc.nationalNumberPattern, nil);
    STAssertEqualObjects(@"\\d{7}(?:\\d{3})?", metadata.generalDesc.possibleNumberPattern, nil);
    STAssertTrue([metadata.generalDesc isEqual:metadata.fixedLine], nil);
    STAssertEqualObjects(@"\\d{10}", metadata.tollFree.possibleNumberPattern, nil);
    STAssertEqualObjects(@"900\\d{7}", metadata.premiumRate.nationalNumberPattern, nil);
    // No shared-cost data is available, so it should be initialised to 'NA'.
    STAssertEqualObjects(@"NA", metadata.sharedCost.nationalNumberPattern, nil);
    STAssertEqualObjects(@"NA", metadata.sharedCost.possibleNumberPattern, nil);
                                       
#pragma mark - testGetInstanceLoadDEMetadata
    metadata = [phoneUtil getMetadataForRegion:@"DE"];
    STAssertEqualObjects(@"DE", metadata.codeID, nil);
    STAssertEqualObjects(@"49", metadata.countryCode, nil);
    STAssertEqualObjects(@"00", metadata.internationalPrefix, nil);
    STAssertEqualObjects(@"0", metadata.nationalPrefix, nil);
    STAssertEquals(6, (int)[metadata.numberFormats count], nil);
    STAssertEquals(1, (int)[((NBNumberFormat*)metadata.numberFormats[5]).leadingDigitsPattern count], nil);
    STAssertEqualObjects(@"900", ((NBNumberFormat*)metadata.numberFormats[5]).leadingDigitsPattern[0], nil);
    STAssertEqualObjects(@"(\\d{3})(\\d{3,4})(\\d{4})", ((NBNumberFormat*)metadata.numberFormats[5]).pattern, nil);
    STAssertEqualObjects(@"$1 $2 $3", ((NBNumberFormat*)metadata.numberFormats[5]).format, nil);
    STAssertEqualObjects(@"(?:[24-6]\\d{2}|3[03-9]\\d|[789](?:[1-9]\\d|0[2-9]))\\d{1,8}", metadata.fixedLine.nationalNumberPattern, nil);
    STAssertEqualObjects(@"\\d{2,14}", metadata.fixedLine.possibleNumberPattern, nil);
    STAssertEqualObjects(@"30123456", metadata.fixedLine.exampleNumber, nil);
    STAssertEqualObjects(@"\\d{10}", metadata.tollFree.possibleNumberPattern, nil);
    STAssertEqualObjects(@"900([135]\\d{6}|9\\d{7})", metadata.premiumRate.nationalNumberPattern, nil);


#pragma mark - testGetInstanceLoadARMetadata
    metadata = [phoneUtil getMetadataForRegion:@"AR"];
    STAssertEqualObjects(@"AR", metadata.codeID, nil);
    STAssertEqualObjects(@"54", metadata.countryCode, nil);
    STAssertEqualObjects(@"00", metadata.internationalPrefix, nil);
    STAssertEqualObjects(@"0", metadata.nationalPrefix, nil);
    STAssertEqualObjects(@"0(?:(11|343|3715)15)?", metadata.nationalPrefixForParsing, nil);
    STAssertEqualObjects(@"9$1", metadata.nationalPrefixTransformRule, nil);
    STAssertEqualObjects(@"$2 15 $3-$4", ((NBNumberFormat*)metadata.numberFormats[2]).format, nil);
    NSLog(@"[%@][%@]",@"$2 15 $3-$4", ((NBNumberFormat*)metadata.numberFormats[2]).format);
    STAssertEqualObjects(@"(9)(\\d{4})(\\d{2})(\\d{4})", ((NBNumberFormat*)metadata.numberFormats[3]).pattern, nil);
    STAssertEqualObjects(@"(9)(\\d{4})(\\d{2})(\\d{4})", ((NBNumberFormat*)metadata.numberFormats[3]).intlFormat, nil);
    STAssertEqualObjects(@"$1 $2 $3 $4", ((NBNumberFormat*)metadata.intlNumberFormats[3]).format, nil);


#pragma mark - testGetInstanceLoadInternationalTollFreeMetadata
    metadata = [phoneUtil getMetadataForNonGeographicalRegion:@"800"];
    STAssertEqualObjects(@"001", metadata.codeID, nil);
    STAssertEqualObjects(@"800", metadata.countryCode, nil);
    STAssertEqualObjects(@"$1 $2", ((NBNumberFormat*)metadata.numberFormats[0]).format, nil);
    STAssertEqualObjects(@"(\\d{4})(\\d{4})", ((NBNumberFormat*)metadata.numberFormats[0]).pattern, nil);
    STAssertEqualObjects(@"12345678", metadata.generalDesc.exampleNumber, nil);
    STAssertEqualObjects(@"12345678", metadata.tollFree.exampleNumber, nil);
                                                            

#pragma mark - testIsNumberGeographical
    // Bahamas, mobile phone number.
    STAssertFalse([phoneUtil isNumberGeographical:BS_MOBILE], nil);
    // Australian fixed line number.
    STAssertTrue([phoneUtil isNumberGeographical:AU_NUMBER], nil);
    // International toll free number.
    STAssertFalse([phoneUtil isNumberGeographical:INTERNATIONAL_TOLL_FREE], nil);
                                                            

#pragma mark - testIsLeadingZeroPossible
    // Italy
    STAssertTrue([phoneUtil isLeadingZeroPossible:@"39"], nil);
    // USA
    STAssertFalse([phoneUtil isLeadingZeroPossible:@"1"], nil);
    // International toll free
    STAssertTrue([phoneUtil isLeadingZeroPossible:@"800"], nil);
    // International premium-rate
    STAssertFalse([phoneUtil isLeadingZeroPossible:@"979"], nil);
    // Not in metadata file, just default to false.
    STAssertFalse([phoneUtil isLeadingZeroPossible:@"888"], nil);
                                                            

#pragma mark - testgetLengthOfGeographicalAreaCode
    // Google MTV, which has area code '650'.
    STAssertEquals(3, [phoneUtil getLengthOfGeographicalAreaCode:US_NUMBER], nil);
    
    // A North America toll-free number, which has no area code.
    STAssertEquals(0, [phoneUtil getLengthOfGeographicalAreaCode:US_TOLLFREE], nil);
    
    // Google London, which has area code '20'.
    STAssertEquals(2, [phoneUtil getLengthOfGeographicalAreaCode:GB_NUMBER], nil);
    
    // A UK mobile phone, which has no area code.
    STAssertEquals(0, [phoneUtil getLengthOfGeographicalAreaCode:GB_MOBILE], nil);
    
    // Google Buenos Aires, which has area code '11'.
    STAssertEquals(2, [phoneUtil getLengthOfGeographicalAreaCode:AR_NUMBER], nil);
    
    // Google Sydney, which has area code '2'.
    STAssertEquals(1, [phoneUtil getLengthOfGeographicalAreaCode:AU_NUMBER], nil);
    
    // Italian numbers - there is no national prefix, but it still has an area
    // code.
    STAssertEquals(2, [phoneUtil getLengthOfGeographicalAreaCode:IT_NUMBER], nil);
    
    // Google Singapore. Singapore has no area code and no national prefix.
    STAssertEquals(0, [phoneUtil getLengthOfGeographicalAreaCode:SG_NUMBER], nil);
    
    // An invalid US number (1 digit shorter), which has no area code.
    STAssertEquals(0,
                 [phoneUtil getLengthOfGeographicalAreaCode:US_SHORT_BY_ONE_NUMBER], nil);
    
    // An international toll free number, which has no area code.
    STAssertEquals(0,
                 [phoneUtil getLengthOfGeographicalAreaCode:INTERNATIONAL_TOLL_FREE], nil);

#pragma mark - testGetLengthOfNationalDestinationCode
    // Google MTV, which has national destination code (NDC) '650'.
    STAssertEquals(3, [phoneUtil getLengthOfNationalDestinationCode:US_NUMBER], nil);
    
    // A North America toll-free number, which has NDC '800'.
    STAssertEquals(3, [phoneUtil getLengthOfNationalDestinationCode:US_TOLLFREE], nil);
    
    // Google London, which has NDC '20'.
    STAssertEquals(2, [phoneUtil getLengthOfNationalDestinationCode:GB_NUMBER], nil);
    
    // A UK mobile phone, which has NDC '7912'.
    STAssertEquals(4, [phoneUtil getLengthOfNationalDestinationCode:GB_MOBILE], nil);
    
    // Google Buenos Aires, which has NDC '11'.
    STAssertEquals(2, [phoneUtil getLengthOfNationalDestinationCode:AR_NUMBER], nil);
    
    // An Argentinian mobile which has NDC '911'.
    STAssertEquals(3, [phoneUtil getLengthOfNationalDestinationCode:AR_MOBILE], nil);
    
    // Google Sydney, which has NDC '2'.
    STAssertEquals(1, [phoneUtil getLengthOfNationalDestinationCode:AU_NUMBER], nil);
    
    // Google Singapore, which has NDC '6521'.
    STAssertEquals(4, [phoneUtil getLengthOfNationalDestinationCode:SG_NUMBER], nil);
    
    // An invalid US number (1 digit shorter), which has no NDC.
    STAssertEquals(0,
                 [phoneUtil getLengthOfNationalDestinationCode:US_SHORT_BY_ONE_NUMBER], nil);
    
    // A number containing an invalid country calling code, which shouldn't have
    // any NDC.
    
    NBPhoneNumber *number = [[NBPhoneNumber alloc] init];
    [number setCountryCode:@"123"];
    [number setNationalNumber:@"6502530000"];
    STAssertEquals(0, [phoneUtil getLengthOfNationalDestinationCode:number], nil);
    
    // An international toll free number, which has NDC '1234'.
    STAssertEquals(4, [phoneUtil getLengthOfNationalDestinationCode:INTERNATIONAL_TOLL_FREE], nil);

#pragma mark - testGetNationalSignificantNumber
    STAssertEqualObjects(@"6502530000", [phoneUtil getNationalSignificantNumber:US_NUMBER], nil);
    
    // An Italian mobile number.
    STAssertEqualObjects(@"345678901", [phoneUtil getNationalSignificantNumber:IT_MOBILE], nil);
    
    // An Italian fixed line number.
    STAssertEqualObjects(@"0236618300", [phoneUtil getNationalSignificantNumber:IT_NUMBER], nil);
    
    STAssertEqualObjects(@"12345678", [phoneUtil getNationalSignificantNumber:INTERNATIONAL_TOLL_FREE], nil);

#pragma mark - testexampleNumber
    STAssertTrue([DE_NUMBER isEqual:[phoneUtil getExampleNumber:@"DE"]], nil);
    
    STAssertTrue([DE_NUMBER isEqual:[phoneUtil getExampleNumberForType:@"DE" type:FIXED_LINE]], nil);
    STAssertNil([phoneUtil getExampleNumberForType:@"DE" type:MOBILE], nil);
    // For the US, the example number is placed under general description, and
    // hence should be used for both fixed line and mobile, so neither of these
    // should return nil.
    STAssertNotNil([phoneUtil getExampleNumberForType:@"US" type:FIXED_LINE], nil);
    STAssertNotNil([phoneUtil getExampleNumberForType:@"US" type:MOBILE], nil);
    // CS is an invalid region, so we have no data for it.
    STAssertNil([phoneUtil getExampleNumberForType:@"CS" type:MOBILE], nil);
    // RegionCode 001 is reserved for supporting non-geographical country calling
    // code. We don't support getting an example number for it with this method.
    STAssertNil([phoneUtil getExampleNumber:@"001"], nil);

#pragma mark - testexampleNumberForNonGeoEntity
    STAssertTrue([INTERNATIONAL_TOLL_FREE isEqual:[phoneUtil getExampleNumberForNonGeoEntity:@"800"]], nil);
    STAssertTrue([UNIVERSAL_PREMIUM_RATE isEqual:[phoneUtil getExampleNumberForNonGeoEntity:@"979"]], nil);

#pragma mark - testConvertAlphaCharactersInNumber
    NSString *input = @"1800-ABC-DEF";
    // Alpha chars are converted to digits; everything else is left untouched.
    
    NSString *expectedOutput = @"1800-222-333";
    STAssertEqualObjects(expectedOutput, [phoneUtil convertAlphaCharactersInNumber:input], nil);

#pragma mark - testNormaliseRemovePunctuation
    NSString *inputNumber = @"034-56&+#2\u00AD34";
    expectedOutput = @"03456234";
    STAssertEqualObjects(expectedOutput, [phoneUtil normalizePhoneNumber:inputNumber], @"Conversion did not correctly remove punctuation");

#pragma mark - testNormaliseReplaceAlphaCharacters
    inputNumber = @"034-I-am-HUNGRY";
    expectedOutput = @"034426486479";
    STAssertEqualObjects(expectedOutput, [phoneUtil normalizePhoneNumber:inputNumber], @"Conversion did not correctly replace alpha characters");

#pragma mark - testNormaliseOtherDigits
    inputNumber = @"\uFF125\u0665";
    expectedOutput = @"255";
    STAssertEqualObjects(expectedOutput, [phoneUtil normalizePhoneNumber:inputNumber], @"Conversion did not correctly replace non-latin digits");
    // Eastern-Arabic digits.
    inputNumber = @"\u06F52\u06F0";
    expectedOutput = @"520";
    STAssertEqualObjects(expectedOutput, [phoneUtil normalizePhoneNumber:inputNumber], @"Conversion did not correctly replace non-latin digits");

#pragma mark - testNormaliseStripAlphaCharacters
    inputNumber = @"034-56&+a#234";
    expectedOutput = @"03456234";
    STAssertEqualObjects(expectedOutput, [phoneUtil normalizeDigitsOnly:inputNumber], @"Conversion did not correctly remove alpha character");

#pragma mark - testFormatUSNumber
    STAssertEqualObjects(@"650 253 0000", [phoneUtil format:US_NUMBER numberFormat:NATIONAL], nil);
    STAssertEqualObjects(@"+1 650 253 0000", [phoneUtil format:US_NUMBER numberFormat:INTERNATIONAL], nil);
    STAssertEqualObjects(@"800 253 0000", [phoneUtil format:US_TOLLFREE numberFormat:NATIONAL], nil);
    STAssertEqualObjects(@"+1 800 253 0000", [phoneUtil format:US_TOLLFREE numberFormat:INTERNATIONAL], nil);
    STAssertEqualObjects(@"900 253 0000", [phoneUtil format:US_PREMIUM numberFormat:NATIONAL], nil);
    STAssertEqualObjects(@"+1 900 253 0000", [phoneUtil format:US_PREMIUM numberFormat:INTERNATIONAL], nil);
    STAssertEqualObjects(@"tel:+1-900-253-0000", [phoneUtil format:US_PREMIUM numberFormat:RFC3966], nil);
    // Numbers with all zeros in the national number part will be formatted by
    // using the raw_input if that is available no matter which format is
    // specified.
    STAssertEqualObjects(@"000-000-0000", [phoneUtil format:US_SPOOF_WITH_RAW_INPUT numberFormat:NATIONAL], nil);
    STAssertEqualObjects(@"0", [phoneUtil format:US_SPOOF numberFormat:NATIONAL], nil);

#pragma mark - testFormatBSNumber
    STAssertEqualObjects(@"242 365 1234", [phoneUtil format:BS_NUMBER numberFormat:NATIONAL], nil);
    STAssertEqualObjects(@"+1 242 365 1234", [phoneUtil format:BS_NUMBER numberFormat:INTERNATIONAL], nil);

#pragma mark - testFormatGBNumber
    STAssertEqualObjects(@"(020) 7031 3000", [phoneUtil format:GB_NUMBER numberFormat:NATIONAL], nil);
    STAssertEqualObjects(@"+44 20 7031 3000", [phoneUtil format:GB_NUMBER numberFormat:INTERNATIONAL], nil);
    STAssertEqualObjects(@"(07912) 345 678", [phoneUtil format:GB_MOBILE numberFormat:NATIONAL], nil);
    STAssertEqualObjects(@"+44 7912 345 678", [phoneUtil format:GB_MOBILE numberFormat:INTERNATIONAL], nil);

#pragma mark - testFormatDENumber
    id deNumber = [[NBPhoneNumber alloc] init];
    [deNumber setCountryCode:@"49"];
    [deNumber setNationalNumber:@"301234"];
    STAssertEqualObjects(@"030/1234", [phoneUtil format:deNumber numberFormat:NATIONAL], nil);
    STAssertEqualObjects(@"+49 30/1234", [phoneUtil format:deNumber numberFormat:INTERNATIONAL], nil);
    STAssertEqualObjects(@"tel:+49-30-1234", [phoneUtil format:deNumber numberFormat:RFC3966], nil);
    
    deNumber = [[NBPhoneNumber alloc] init];
    [deNumber setCountryCode:@"49"];
    [deNumber setNationalNumber:@"291123"];
    STAssertEqualObjects(@"0291 123", [phoneUtil format:deNumber numberFormat:NATIONAL], nil);
    STAssertEqualObjects(@"+49 291 123", [phoneUtil format:deNumber numberFormat:INTERNATIONAL], nil);
    
    deNumber = [[NBPhoneNumber alloc] init];
    [deNumber setCountryCode:@"49"];
    [deNumber setNationalNumber:@"29112345678"];
    STAssertEqualObjects(@"0291 12345678", [phoneUtil format:deNumber numberFormat:NATIONAL], nil);
    STAssertEqualObjects(@"+49 291 12345678", [phoneUtil format:deNumber numberFormat:INTERNATIONAL], nil);
    
    deNumber = [[NBPhoneNumber alloc] init];
    [deNumber setCountryCode:@"49"];
    [deNumber setNationalNumber:@"912312345"];
    STAssertEqualObjects(@"09123 12345", [phoneUtil format:deNumber numberFormat:NATIONAL], nil);
    STAssertEqualObjects(@"+49 9123 12345", [phoneUtil format:deNumber numberFormat:INTERNATIONAL], nil);
    
    deNumber = [[NBPhoneNumber alloc] init];
    [deNumber setCountryCode:@"49"];
    [deNumber setNationalNumber:@"80212345"];
    STAssertEqualObjects(@"08021 2345", [phoneUtil format:deNumber numberFormat:NATIONAL], nil);
    STAssertEqualObjects(@"+49 8021 2345", [phoneUtil format:deNumber numberFormat:INTERNATIONAL], nil);
    
    // Note this number is correctly formatted without national prefix. Most of
    // the numbers that are treated as invalid numbers by the library are short
    // numbers, and they are usually not dialed with national prefix.
    STAssertEqualObjects(@"1234", [phoneUtil format:DE_SHORT_NUMBER numberFormat:NATIONAL], nil);
    STAssertEqualObjects(@"+49 1234", [phoneUtil format:DE_SHORT_NUMBER numberFormat:INTERNATIONAL], nil);
    
    deNumber = [[NBPhoneNumber alloc] init];
    [deNumber setCountryCode:@"49"];
    [deNumber setNationalNumber:@"41341234"];
    STAssertEqualObjects(@"04134 1234", [phoneUtil format:deNumber numberFormat:NATIONAL], nil);

#pragma mark - testFormatITNumber
    STAssertEqualObjects(@"02 3661 8300", [phoneUtil format:IT_NUMBER numberFormat:NATIONAL], nil);
    STAssertEqualObjects(@"+39 02 3661 8300", [phoneUtil format:IT_NUMBER numberFormat:INTERNATIONAL], nil);
    STAssertEqualObjects(@"+390236618300", [phoneUtil format:IT_NUMBER numberFormat:E164], nil);
    STAssertEqualObjects(@"345 678 901", [phoneUtil format:IT_MOBILE numberFormat:NATIONAL], nil);
    STAssertEqualObjects(@"+39 345 678 901", [phoneUtil format:IT_MOBILE numberFormat:INTERNATIONAL], nil);
    STAssertEqualObjects(@"+39345678901", [phoneUtil format:IT_MOBILE numberFormat:E164], nil);

#pragma mark - testFormatAUNumber
    STAssertEqualObjects(@"02 3661 8300", [phoneUtil format:AU_NUMBER numberFormat:NATIONAL], nil);
    STAssertEqualObjects(@"+61 2 3661 8300", [phoneUtil format:AU_NUMBER numberFormat:INTERNATIONAL], nil);
    STAssertEqualObjects(@"+61236618300", [phoneUtil format:AU_NUMBER numberFormat:E164], nil);
    
    id auNumber = [[NBPhoneNumber alloc] init];
    [auNumber setCountryCode:@"61"];
    [auNumber setNationalNumber:@"1800123456"];
    STAssertEqualObjects(@"1800 123 456", [phoneUtil format:auNumber numberFormat:NATIONAL], nil);
    STAssertEqualObjects(@"+61 1800 123 456", [phoneUtil format:auNumber numberFormat:INTERNATIONAL], nil);
    STAssertEqualObjects(@"+611800123456", [phoneUtil format:auNumber numberFormat:E164], nil);

#pragma mark - testFormatARNumber
    STAssertEqualObjects(@"011 8765-4321", [phoneUtil format:AR_NUMBER numberFormat:NATIONAL], nil);
    STAssertEqualObjects(@"+54 11 8765-4321", [phoneUtil format:AR_NUMBER numberFormat:INTERNATIONAL], nil);
    STAssertEqualObjects(@"+541187654321", [phoneUtil format:AR_NUMBER numberFormat:E164], nil);
    STAssertEqualObjects(@"011 15 8765-4321", [phoneUtil format:AR_MOBILE numberFormat:NATIONAL], nil);
    STAssertEqualObjects(@"+54 9 11 8765 4321", [phoneUtil format:AR_MOBILE numberFormat:INTERNATIONAL], nil);
    STAssertEqualObjects(@"+5491187654321", [phoneUtil format:AR_MOBILE numberFormat:E164], nil);

#pragma mark - testFormatMXNumber
    STAssertEqualObjects(@"045 234 567 8900", [phoneUtil format:MX_MOBILE1 numberFormat:NATIONAL], nil);
    STAssertEqualObjects(@"+52 1 234 567 8900", [phoneUtil format:MX_MOBILE1 numberFormat:INTERNATIONAL], nil);
    STAssertEqualObjects(@"+5212345678900", [phoneUtil format:MX_MOBILE1 numberFormat:E164], nil);
    STAssertEqualObjects(@"045 55 1234 5678", [phoneUtil format:MX_MOBILE2 numberFormat:NATIONAL], nil);
    STAssertEqualObjects(@"+52 1 55 1234 5678", [phoneUtil format:MX_MOBILE2 numberFormat:INTERNATIONAL], nil);
    STAssertEqualObjects(@"+5215512345678", [phoneUtil format:MX_MOBILE2 numberFormat:E164], nil);
    STAssertEqualObjects(@"01 33 1234 5678", [phoneUtil format:MX_NUMBER1 numberFormat:NATIONAL], nil);
    STAssertEqualObjects(@"+52 33 1234 5678", [phoneUtil format:MX_NUMBER1 numberFormat:INTERNATIONAL], nil);
    STAssertEqualObjects(@"+523312345678", [phoneUtil format:MX_NUMBER1 numberFormat:E164], nil);
    STAssertEqualObjects(@"01 821 123 4567", [phoneUtil format:MX_NUMBER2 numberFormat:NATIONAL], nil);
    STAssertEqualObjects(@"+52 821 123 4567", [phoneUtil format:MX_NUMBER2 numberFormat:INTERNATIONAL], nil);
    STAssertEqualObjects(@"+528211234567", [phoneUtil format:MX_NUMBER2 numberFormat:E164], nil);

#pragma mark - testFormatOutOfCountryCallingNumber
    STAssertEqualObjects(@"00 1 900 253 0000", [phoneUtil formatOutOfCountryCallingNumber:US_PREMIUM regionCallingFrom:@"DE"], nil);
    STAssertEqualObjects(@"1 650 253 0000", [phoneUtil formatOutOfCountryCallingNumber:US_NUMBER regionCallingFrom:@"BS"], nil);
    STAssertEqualObjects(@"00 1 650 253 0000", [phoneUtil formatOutOfCountryCallingNumber:US_NUMBER regionCallingFrom:@"PL"], nil);
    STAssertEqualObjects(@"011 44 7912 345 678", [phoneUtil formatOutOfCountryCallingNumber:GB_MOBILE regionCallingFrom:@"US"], nil);
    STAssertEqualObjects(@"00 49 1234", [phoneUtil formatOutOfCountryCallingNumber:DE_SHORT_NUMBER regionCallingFrom:@"GB"], nil);
    // Note this number is correctly formatted without national prefix. Most of
    // the numbers that are treated as invalid numbers by the library are short
    // numbers, and they are usually not dialed with national prefix.
    STAssertEqualObjects(@"1234", [phoneUtil formatOutOfCountryCallingNumber:DE_SHORT_NUMBER regionCallingFrom:@"DE"], nil);
    STAssertEqualObjects(@"011 39 02 3661 8300", [phoneUtil formatOutOfCountryCallingNumber:IT_NUMBER regionCallingFrom:@"US"], nil);
    STAssertEqualObjects(@"02 3661 8300", [phoneUtil formatOutOfCountryCallingNumber:IT_NUMBER regionCallingFrom:@"IT"], nil);
    STAssertEqualObjects(@"+39 02 3661 8300", [phoneUtil formatOutOfCountryCallingNumber:IT_NUMBER regionCallingFrom:@"SG"], nil);
    STAssertEqualObjects(@"6521 8000", [phoneUtil formatOutOfCountryCallingNumber:SG_NUMBER regionCallingFrom:@"SG"], nil);
    STAssertEqualObjects(@"011 54 9 11 8765 4321", [phoneUtil formatOutOfCountryCallingNumber:AR_MOBILE regionCallingFrom:@"US"], nil);
    STAssertEqualObjects(@"011 800 1234 5678", [phoneUtil formatOutOfCountryCallingNumber:INTERNATIONAL_TOLL_FREE regionCallingFrom:@"US"], nil);
    
    
    id arNumberWithExtn = [AR_MOBILE copy];
    [arNumberWithExtn setExtension:@"1234"];
    STAssertEqualObjects(@"011 54 9 11 8765 4321 ext. 1234", [phoneUtil formatOutOfCountryCallingNumber:arNumberWithExtn regionCallingFrom:@"US"], nil);
    STAssertEqualObjects(@"0011 54 9 11 8765 4321 ext. 1234", [phoneUtil formatOutOfCountryCallingNumber:arNumberWithExtn regionCallingFrom:@"AU"], nil);
    STAssertEqualObjects(@"011 15 8765-4321 ext. 1234", [phoneUtil formatOutOfCountryCallingNumber:arNumberWithExtn regionCallingFrom:@"AR"], nil);

#pragma mark - testFormatOutOfCountryWithInvalidRegion
    // AQ/Antarctica isn't a valid region code for phone number formatting,
    // so this falls back to intl formatting.
    STAssertEqualObjects(@"+1 650 253 0000", [phoneUtil formatOutOfCountryCallingNumber:US_NUMBER regionCallingFrom:@"AQ"], nil);
    // For region code 001, the out-of-country format always turns into the
    // international format.
    STAssertEqualObjects(@"+1 650 253 0000", [phoneUtil formatOutOfCountryCallingNumber:US_NUMBER regionCallingFrom:@"001"], nil);

#pragma mark - testFormatOutOfCountryWithPreferredIntlPrefix
    // This should use 0011, since that is the preferred international prefix
    // (both 0011 and 0012 are accepted as possible international prefixes in our
    // test metadta.)
    STAssertEqualObjects(@"0011 39 02 3661 8300", [phoneUtil formatOutOfCountryCallingNumber:IT_NUMBER regionCallingFrom:@"AU"], nil);

#pragma mark - testFormatOutOfCountryKeepingAlphaChars
    id alphaNumericNumber = [[NBPhoneNumber alloc] init];
    [alphaNumericNumber setCountryCode:@"1"];
    [alphaNumericNumber setNationalNumber:@"8007493524"];
    [alphaNumericNumber setRawInput:@"1800 six-flag"];
    STAssertEqualObjects(@"0011 1 800 SIX-FLAG", [phoneUtil formatOutOfCountryKeepingAlphaChars:alphaNumericNumber regionCallingFrom:@"AU"], nil);
    
    [alphaNumericNumber setRawInput:@"1-800-SIX-flag"];
    STAssertEqualObjects(@"0011 1 800-SIX-FLAG", [phoneUtil formatOutOfCountryKeepingAlphaChars:alphaNumericNumber regionCallingFrom:@"AU"], nil);
    
    [alphaNumericNumber setRawInput:@"Call us from UK: 00 1 800 SIX-flag"];
    STAssertEqualObjects(@"0011 1 800 SIX-FLAG", [phoneUtil formatOutOfCountryKeepingAlphaChars:alphaNumericNumber regionCallingFrom:@"AU"], nil);
    
    [alphaNumericNumber setRawInput:@"800 SIX-flag"];
    STAssertEqualObjects(@"0011 1 800 SIX-FLAG", [phoneUtil formatOutOfCountryKeepingAlphaChars:alphaNumericNumber regionCallingFrom:@"AU"], nil);
    
    // Formatting from within the NANPA region.
    STAssertEqualObjects(@"1 800 SIX-FLAG", [phoneUtil formatOutOfCountryKeepingAlphaChars:alphaNumericNumber regionCallingFrom:@"US"], nil);
    STAssertEqualObjects(@"1 800 SIX-FLAG", [phoneUtil formatOutOfCountryKeepingAlphaChars:alphaNumericNumber regionCallingFrom:@"BS"], nil);
    
    // Testing that if the raw input doesn't exist, it is formatted using
    // formatOutOfCountryCallingNumber.
    [alphaNumericNumber setRawInput:nil];
    STAssertEqualObjects(@"00 1 800 749 3524", [phoneUtil formatOutOfCountryKeepingAlphaChars:alphaNumericNumber regionCallingFrom:@"DE"], nil);
    
    // Testing AU alpha number formatted from Australia.
    [alphaNumericNumber setCountryCode:@"61"];
    [alphaNumericNumber setNationalNumber:@"827493524"];
    [alphaNumericNumber setRawInput:@"+61 82749-FLAG"];
    // This number should have the national prefix fixed.
    STAssertEqualObjects(@"082749-FLAG", [phoneUtil formatOutOfCountryKeepingAlphaChars:alphaNumericNumber regionCallingFrom:@"AU"], nil);
    
    [alphaNumericNumber setRawInput:@"082749-FLAG"];
    STAssertEqualObjects(@"082749-FLAG", [phoneUtil formatOutOfCountryKeepingAlphaChars:alphaNumericNumber regionCallingFrom:@"AU"], nil);
    
    [alphaNumericNumber setNationalNumber:@"18007493524"];
    [alphaNumericNumber setRawInput:@"1-800-SIX-flag"];
    // This number should not have the national prefix prefixed, in accordance
    // with the override for this specific formatting rule.
    STAssertEqualObjects(@"1-800-SIX-FLAG", [phoneUtil formatOutOfCountryKeepingAlphaChars:alphaNumericNumber regionCallingFrom:@"AU"], nil);
    
    // The metadata should not be permanently changed, since we copied it before
    // modifying patterns. Here we check this.
    [alphaNumericNumber setNationalNumber:@"1800749352"];
    STAssertEqualObjects(@"1800 749 352", [phoneUtil formatOutOfCountryCallingNumber:alphaNumericNumber regionCallingFrom:@"AU"], nil);
    
    // Testing a region with multiple international prefixes.
    STAssertEqualObjects(@"+61 1-800-SIX-FLAG", [phoneUtil formatOutOfCountryKeepingAlphaChars:alphaNumericNumber regionCallingFrom:@"SG"], nil);
    // Testing the case of calling from a non-supported region.
    STAssertEqualObjects(@"+61 1-800-SIX-FLAG", [phoneUtil formatOutOfCountryKeepingAlphaChars:alphaNumericNumber regionCallingFrom:@"AQ"], nil);
    
    // Testing the case with an invalid country calling code.
    [alphaNumericNumber setCountryCode:@"0"];
    [alphaNumericNumber setNationalNumber:@"18007493524"];
    [alphaNumericNumber setRawInput:@"1-800-SIX-flag"];
    // Uses the raw input only.
    STAssertEqualObjects(@"1-800-SIX-flag", [phoneUtil formatOutOfCountryKeepingAlphaChars:alphaNumericNumber regionCallingFrom:@"DE"], nil);
    
    // Testing the case of an invalid alpha number.
    [alphaNumericNumber setCountryCode:@"1"];
    [alphaNumericNumber setNationalNumber:@"80749"];
    [alphaNumericNumber setRawInput:@"180-SIX"];
    // No country-code stripping can be done.
    STAssertEqualObjects(@"00 1 180-SIX", [phoneUtil formatOutOfCountryKeepingAlphaChars:alphaNumericNumber regionCallingFrom:@"DE"], nil);
    
    // Testing the case of calling from a non-supported region.
    [alphaNumericNumber setCountryCode:@"1"];
    [alphaNumericNumber setNationalNumber:@"80749"];
    [alphaNumericNumber setRawInput:@"180-SIX"];
    // No country-code stripping can be done since the number is invalid.
    STAssertEqualObjects(@"+1 180-SIX", [phoneUtil formatOutOfCountryKeepingAlphaChars:alphaNumericNumber regionCallingFrom:@"AQ"], nil);

#pragma mark - testFormatWithCarrierCode()

    // We only support this for AR in our test metadata, and only for mobile
    // numbers starting with certain values.
    
    NBPhoneNumber *arMobile = [[NBPhoneNumber alloc] init];
    [arMobile setCountryCode:@"54"];
    [arMobile setNationalNumber:@"92234654321"];
    STAssertEqualObjects(@"02234 65-4321", [phoneUtil format:arMobile numberFormat:NATIONAL], nil);
    // Here we force 14 as the carrier code.
    STAssertEqualObjects(@"02234 14 65-4321", [phoneUtil formatNationalNumberWithCarrierCode:arMobile carrierCode:@"14"], nil);
    // Here we force the number to be shown with no carrier code.
    STAssertEqualObjects(@"02234 65-4321", [phoneUtil formatNationalNumberWithCarrierCode:arMobile carrierCode:@""], nil);
    // Here the international rule is used, so no carrier code should be present.
    STAssertEqualObjects(@"+5492234654321", [phoneUtil format:arMobile numberFormat:E164], nil);
    // We don't support this for the US so there should be no change.
    STAssertEqualObjects(@"650 253 0000", [phoneUtil formatNationalNumberWithCarrierCode:US_NUMBER carrierCode:@"15"], nil);
    // Invalid country code should just get the NSN.
    STAssertEqualObjects(@"12345", [phoneUtil formatNationalNumberWithCarrierCode:UNKNOWN_COUNTRY_CODE_NO_RAW_INPUT carrierCode:@"89"], nil);

#pragma mark - testFormatWithPreferredCarrierCode

    // We only support this for AR in our test metadata.
    
    NBPhoneNumber *arNumber = [[NBPhoneNumber alloc] init];
    [arNumber setCountryCode:@"54"];
    [arNumber setNationalNumber:@"91234125678"];
    // Test formatting with no preferred carrier code stored in the number itself.
    STAssertEqualObjects(@"01234 15 12-5678", [phoneUtil formatNationalNumberWithPreferredCarrierCode:arNumber fallbackCarrierCode:@"15"], nil);
    STAssertEqualObjects(@"01234 12-5678", [phoneUtil formatNationalNumberWithPreferredCarrierCode:arNumber fallbackCarrierCode:@""], nil);
    // Test formatting with preferred carrier code present.
    [arNumber setPreferredDomesticCarrierCode:@"19"];
    STAssertEqualObjects(@"01234 12-5678", [phoneUtil format:arNumber numberFormat:NATIONAL], nil);
    STAssertEqualObjects(@"01234 19 12-5678", [phoneUtil formatNationalNumberWithPreferredCarrierCode:arNumber fallbackCarrierCode:@"15"], nil);
    STAssertEqualObjects(@"01234 19 12-5678", [phoneUtil formatNationalNumberWithPreferredCarrierCode:arNumber fallbackCarrierCode:@""], nil);
    // When the preferred_domestic_carrier_code is present (even when it contains
    // an empty string), use it instead of the default carrier code passed in.
    [arNumber setPreferredDomesticCarrierCode:@""];
    STAssertEqualObjects(@"01234 12-5678", [phoneUtil formatNationalNumberWithPreferredCarrierCode:arNumber fallbackCarrierCode:@"15"], nil);
    // We don't support this for the US so there should be no change.
    
    NBPhoneNumber *usNumber = [[NBPhoneNumber alloc] init];
    [usNumber setCountryCode:@"1"];
    [usNumber setNationalNumber:@"4241231234"];
    [usNumber setPreferredDomesticCarrierCode:@"99"];
    STAssertEqualObjects(@"424 123 1234", [phoneUtil format:usNumber numberFormat:NATIONAL], nil);
    STAssertEqualObjects(@"424 123 1234", [phoneUtil formatNationalNumberWithPreferredCarrierCode:usNumber fallbackCarrierCode:@"15"], nil);

#pragma mark - testFormatNumberForMobileDialing
    // US toll free numbers are marked as noInternationalDialling in the test
    // metadata for testing purposes.
    STAssertEqualObjects(@"800 253 0000", [phoneUtil formatNumberForMobileDialing:US_TOLLFREE regionCallingFrom:@"US" withFormatting:YES], nil);
    STAssertEqualObjects(@"", [phoneUtil formatNumberForMobileDialing:US_TOLLFREE regionCallingFrom:@"CN" withFormatting:YES], nil);
    STAssertEqualObjects(@"+1 650 253 0000", [phoneUtil formatNumberForMobileDialing:US_TOLLFREE regionCallingFrom:@"US" withFormatting:YES], nil);
    
    id usNumberWithExtn = [US_NUMBER copy];
    [usNumberWithExtn setExtension:@"1234"];
    STAssertEqualObjects(@"+1 650 253 0000", [phoneUtil formatNumberForMobileDialing:usNumberWithExtn regionCallingFrom:@"US" withFormatting:YES], nil);
    STAssertEqualObjects(@"8002530000", [phoneUtil formatNumberForMobileDialing:US_TOLLFREE regionCallingFrom:@"US" withFormatting:NO], nil);
    STAssertEqualObjects(@"", [phoneUtil formatNumberForMobileDialing:US_TOLLFREE regionCallingFrom:@"CN" withFormatting:NO], nil);
    STAssertEqualObjects(@"+16502530000", [phoneUtil formatNumberForMobileDialing:US_NUMBER regionCallingFrom:@"US" withFormatting:NO], nil);
    STAssertEqualObjects(@"+16502530000", [phoneUtil formatNumberForMobileDialing:usNumberWithExtn regionCallingFrom:@"US" withFormatting:NO], nil);


    // An invalid US number, which is one digit too long.
    STAssertEqualObjects(@"+165025300001", [phoneUtil formatNumberForMobileDialing:US_LONG_NUMBER regionCallingFrom:@"US" withFormatting:NO], nil);
    STAssertEqualObjects(@"+1 65025300001", [phoneUtil formatNumberForMobileDialing:US_LONG_NUMBER regionCallingFrom:@"US" withFormatting:YES], nil);


    // Star numbers. In real life they appear in Israel, but we have them in JP
    // in our test metadata.
    STAssertEqualObjects(@"*2345", [phoneUtil formatNumberForMobileDialing:JP_STAR_NUMBER regionCallingFrom:@"JP" withFormatting:NO], nil);
    STAssertEqualObjects(@"*2345", [phoneUtil formatNumberForMobileDialing:JP_STAR_NUMBER regionCallingFrom:@"JP" withFormatting:YES], nil);
    STAssertEqualObjects(@"+80012345678", [phoneUtil formatNumberForMobileDialing:INTERNATIONAL_TOLL_FREE regionCallingFrom:@"JP" withFormatting:NO], nil);
    STAssertEqualObjects(@"+800 1234 5678", [phoneUtil formatNumberForMobileDialing:INTERNATIONAL_TOLL_FREE regionCallingFrom:@"JP" withFormatting:YES], nil);

    
#pragma mark - testFormatByPattern

    
    NBNumberFormat *newNumFormat = [[NBNumberFormat alloc] init];
    [newNumFormat setPattern:@"(\\d{3})(\\d{3})(\\d{4})"];
    [newNumFormat setFormat:@"($1) $2-$3"];
    
    STAssertEqualObjects(@"(650) 253-0000", [phoneUtil formatByPattern:US_NUMBER numberFormat:NATIONAL userDefinedFormats:@[newNumFormat]], nil);
    
    STAssertEqualObjects(@"+1 (650) 253-0000", [phoneUtil formatByPattern:US_NUMBER numberFormat:INTERNATIONAL userDefinedFormats:@[newNumFormat]], nil);
    STAssertEqualObjects(@"tel:+1-650-253-0000", [phoneUtil formatByPattern:US_NUMBER numberFormat:RFC3966 userDefinedFormats:@[newNumFormat]], nil);
    
    // $NP is set to '1' for the US. Here we check that for other NANPA countries
    // the US rules are followed.
    [newNumFormat setNationalPrefixFormattingRule:@"$NP ($FG)"];
    [newNumFormat setFormat:@"$1 $2-$3"];
    STAssertEqualObjects(@"1 (242) 365-1234", [phoneUtil formatByPattern:BS_NUMBER numberFormat:NATIONAL userDefinedFormats:@[newNumFormat]], nil);
    STAssertEqualObjects(@"+1 242 365-1234", [phoneUtil formatByPattern:BS_NUMBER numberFormat:INTERNATIONAL userDefinedFormats:@[newNumFormat]], nil);
    
    [newNumFormat setPattern:@"(\\d{2})(\\d{5})(\\d{3})"];
    [newNumFormat setFormat:@"$1-$2 $3"];
    
    STAssertEqualObjects(@"02-36618 300", [phoneUtil formatByPattern:IT_NUMBER numberFormat:NATIONAL userDefinedFormats:@[newNumFormat]], nil);
    STAssertEqualObjects(@"+39 02-36618 300", [phoneUtil formatByPattern:IT_NUMBER numberFormat:INTERNATIONAL userDefinedFormats:@[newNumFormat]], nil);
    
    [newNumFormat setNationalPrefixFormattingRule:@"$NP$FG"];
    [newNumFormat setPattern:@"(\\d{2})(\\d{4})(\\d{4})"];
    [newNumFormat setFormat:@"$1 $2 $3"];
    STAssertEqualObjects(@"020 7031 3000", [phoneUtil formatByPattern:GB_NUMBER numberFormat:NATIONAL userDefinedFormats:@[newNumFormat]], nil);
    
    [newNumFormat setNationalPrefixFormattingRule:@"($NP$FG)"];
    STAssertEqualObjects(@"(020) 7031 3000", [phoneUtil formatByPattern:GB_NUMBER numberFormat:NATIONAL userDefinedFormats:@[newNumFormat]], nil);
    
    [newNumFormat setNationalPrefixFormattingRule:@""];
    STAssertEqualObjects(@"20 7031 3000", [phoneUtil formatByPattern:GB_NUMBER numberFormat:NATIONAL userDefinedFormats:@[newNumFormat]], nil);
    STAssertEqualObjects(@"+44 20 7031 3000", [phoneUtil formatByPattern:GB_NUMBER numberFormat:INTERNATIONAL userDefinedFormats:@[newNumFormat]], nil);

#pragma mark - testFormatE164Number

    STAssertEqualObjects(@"+16502530000", [phoneUtil format:US_NUMBER numberFormat:E164], nil);
    STAssertEqualObjects(@"+4930123456", [phoneUtil format:DE_NUMBER numberFormat:E164], nil);
    STAssertEqualObjects(@"+80012345678", [phoneUtil format:INTERNATIONAL_TOLL_FREE numberFormat:E164], nil);


#pragma mark - testFormatNumberWithExtension:) {

    id nzNumber = [NZ_NUMBER copy];
    [nzNumber setExtension:@"1234"];
    // Uses default extension prefix:
    STAssertEqualObjects(@"03-331 6005 ext. 1234", [phoneUtil format:nzNumber numberFormat:NATIONAL], nil);
    // Uses RFC 3966 syntax.
    STAssertEqualObjects(@"tel:+64-3-331-6005;ext=1234", [phoneUtil format:nzNumber numberFormat:RFC3966], nil);
    // Extension prefix overridden in the territory information for the US:
    
    id usNumberWithExtension = [US_NUMBER copy];
    [usNumberWithExtension setExtension:@"4567"];
    STAssertEqualObjects(@"650 253 0000 extn. 4567", [phoneUtil format:usNumberWithExtension numberFormat:NATIONAL], nil);


#pragma mark - testFormatInOriginalFormat
    
    NBPhoneNumber *number1 = [phoneUtil parseAndKeepRawInput:@"+442087654321" defaultRegion:@"GB"];
    STAssertEqualObjects(@"+44 20 8765 4321", [phoneUtil formatInOriginalFormat:number1 regionCallingFrom:@"GB"], nil);
    
    
    NBPhoneNumber *number2 = [phoneUtil parseAndKeepRawInput:@"02087654321" defaultRegion:@"GB"];
    STAssertEqualObjects(@"(020) 8765 4321", [phoneUtil formatInOriginalFormat:number2 regionCallingFrom:@"GB"], nil);
    
    
    NBPhoneNumber *number3 = [phoneUtil parseAndKeepRawInput:@"011442087654321" defaultRegion:@"US"];
    STAssertEqualObjects(@"011 44 20 8765 4321", [phoneUtil formatInOriginalFormat:number3 regionCallingFrom:@"US"], nil);
    
    
    NBPhoneNumber *number4 = [phoneUtil parseAndKeepRawInput:@"442087654321" defaultRegion:@"GB"];
    STAssertEqualObjects(@"44 20 8765 4321",
                 [phoneUtil formatInOriginalFormat:number4 regionCallingFrom:@"GB"], nil);
    
    
    NBPhoneNumber *number5 = [phoneUtil parse:@"+442087654321" defaultRegion:@"GB"];
    STAssertEqualObjects(@"(020) 8765 4321",
                 [phoneUtil formatInOriginalFormat:number5 regionCallingFrom:@"GB"], nil);
    
    // Invalid numbers that we have a formatting pattern for should be formatted
    // properly. Note area codes starting with 7 are intentionally excluded in
    // the test metadata for testing purposes.
    
    NBPhoneNumber *number6 = [phoneUtil parseAndKeepRawInput:@"7345678901" defaultRegion:@"US"];
    STAssertEqualObjects(@"734 567 8901",
                 [phoneUtil formatInOriginalFormat:number6 regionCallingFrom:@"US"], nil);
    
    // US is not a leading zero country, and the presence of the leading zero
    // leads us to format the number using raw_input.
    
    NBPhoneNumber *number7 = [phoneUtil parseAndKeepRawInput:@"0734567 8901" defaultRegion:@"US"];
    STAssertEqualObjects(@"0734567 8901",
                 [phoneUtil formatInOriginalFormat:number7 regionCallingFrom:@"US"], nil);
    
    // This number is valid, but we don't have a formatting pattern for it.
    // Fall back to the raw input.
    
    NBPhoneNumber *number8 = [phoneUtil parseAndKeepRawInput:@"02-4567-8900" defaultRegion:@"KR"];
    STAssertEqualObjects(@"02-4567-8900",
                 [phoneUtil formatInOriginalFormat:number8 regionCallingFrom:@"KR"], nil);
    
    
    NBPhoneNumber *number9 = [phoneUtil parseAndKeepRawInput:@"01180012345678" defaultRegion:@"US"];
    STAssertEqualObjects(@"011 800 1234 5678",
                 [phoneUtil formatInOriginalFormat:number9 regionCallingFrom:@"US"], nil);
    
    
    NBPhoneNumber *number10 = [phoneUtil parseAndKeepRawInput:@"+80012345678" defaultRegion:@"KR"];
    STAssertEqualObjects(@"+800 1234 5678", [phoneUtil formatInOriginalFormat:number10 regionCallingFrom:@"KR"], nil);
    
    // US local numbers are formatted correctly, as we have formatting patterns
    // for them.
    
    NBPhoneNumber *localNumberUS = [phoneUtil parseAndKeepRawInput:@"2530000" defaultRegion:@"US"];
    STAssertEqualObjects(@"253 0000", [phoneUtil formatInOriginalFormat:localNumberUS regionCallingFrom:@"US"], nil);
    
    NBPhoneNumber *numberWithNationalPrefixUS = [phoneUtil parseAndKeepRawInput:@"18003456789" defaultRegion:@"US"];
    STAssertEqualObjects(@"1 800 345 6789", [phoneUtil formatInOriginalFormat:numberWithNationalPrefixUS regionCallingFrom:@"US"], nil);
    
    NBPhoneNumber *numberWithoutNationalPrefixGB = [phoneUtil parseAndKeepRawInput:@"2087654321" defaultRegion:@"GB"];
    STAssertEqualObjects(@"20 8765 4321", [phoneUtil formatInOriginalFormat:numberWithoutNationalPrefixGB regionCallingFrom:@"GB"], nil);
    // Make sure no metadata is modified as a result of the previous function
    // call.
    STAssertEqualObjects(@"(020) 8765 4321", [phoneUtil formatInOriginalFormat:number5 regionCallingFrom:@"GB"], nil);
    
    NBPhoneNumber *numberWithNationalPrefixMX = [phoneUtil parseAndKeepRawInput:@"013312345678" defaultRegion:@"MX"];
    STAssertEqualObjects(@"01 33 1234 5678", [phoneUtil formatInOriginalFormat:numberWithNationalPrefixMX regionCallingFrom:@"MX"], nil);
    
    NBPhoneNumber *numberWithoutNationalPrefixMX = [phoneUtil parseAndKeepRawInput:@"3312345678" defaultRegion:@"MX"];
    STAssertEqualObjects(@"33 1234 5678", [phoneUtil formatInOriginalFormat:numberWithoutNationalPrefixMX regionCallingFrom:@"MX"], nil);
    
    NBPhoneNumber *italianFixedLineNumber = [phoneUtil parseAndKeepRawInput:@"0212345678" defaultRegion:@"IT"];
    STAssertEqualObjects(@"02 1234 5678", [phoneUtil formatInOriginalFormat:italianFixedLineNumber regionCallingFrom:@"IT"], nil);
    
    NBPhoneNumber *numberWithNationalPrefixJP = [phoneUtil parseAndKeepRawInput:@"00777012" defaultRegion:@"JP"];
    STAssertEqualObjects(@"0077-7012", [phoneUtil formatInOriginalFormat:numberWithNationalPrefixJP regionCallingFrom:@"JP"], nil);
    
    NBPhoneNumber *numberWithoutNationalPrefixJP = [phoneUtil parseAndKeepRawInput:@"0777012" defaultRegion:@"JP"];
    STAssertEqualObjects(@"0777012", [phoneUtil formatInOriginalFormat:numberWithoutNationalPrefixJP regionCallingFrom:@"JP"], nil);
    
    
    NBPhoneNumber *numberWithCarrierCodeBR = [phoneUtil parseAndKeepRawInput:@"012 3121286979" defaultRegion:@"BR"];
    STAssertEqualObjects(@"012 3121286979", [phoneUtil formatInOriginalFormat:numberWithCarrierCodeBR regionCallingFrom:@"BR"], nil);
    
    // The default national prefix used in this case is 045. When a number with
    // national prefix 044 is entered, we return the raw input as we don't want to
    // change the number entered.
    
    NBPhoneNumber *numberWithNationalPrefixMX1 =
    [phoneUtil parseAndKeepRawInput:@"044(33)1234-5678" defaultRegion:@"MX"];
    STAssertEqualObjects(@"044(33)1234-5678",
                 [phoneUtil formatInOriginalFormat:numberWithNationalPrefixMX1 regionCallingFrom:@"MX"], nil);
    
    
    NBPhoneNumber *numberWithNationalPrefixMX2 = [phoneUtil parseAndKeepRawInput:@"045(33)1234-5678" defaultRegion:@"MX"];
    STAssertEqualObjects(@"045 33 1234 5678", [phoneUtil formatInOriginalFormat:numberWithNationalPrefixMX2 regionCallingFrom:@"MX"], nil);
    
    // The default international prefix used in this case is 0011. When a number
    // with international prefix 0012 is entered, we return the raw input as we
    // don't want to change the number entered.
    
    id outOfCountryNumberFromAU1 = [phoneUtil parseAndKeepRawInput:@"0012 16502530000" defaultRegion:@"AU"];
    STAssertEqualObjects(@"0012 16502530000", [phoneUtil formatInOriginalFormat:outOfCountryNumberFromAU1 regionCallingFrom:@"AU"], nil);
    
    
    id outOfCountryNumberFromAU2 = [phoneUtil parseAndKeepRawInput:@"0011 16502530000" defaultRegion:@"AU"];
    STAssertEqualObjects(@"0011 1 650 253 0000", [phoneUtil formatInOriginalFormat:outOfCountryNumberFromAU2 regionCallingFrom:@"AU"], nil);
    
    // Test the star sign is not removed from or added to the original input by
    // this method.
    
    id starNumber = [phoneUtil parseAndKeepRawInput:@"*1234" defaultRegion:@"JP"];
    STAssertEqualObjects(@"*1234", [phoneUtil formatInOriginalFormat:starNumber regionCallingFrom:@"JP"], nil);
    
    NBPhoneNumber *numberWithoutStar = [phoneUtil parseAndKeepRawInput:@"1234" defaultRegion:@"JP"];
    STAssertEqualObjects(@"1234", [phoneUtil formatInOriginalFormat:numberWithoutStar regionCallingFrom:@"JP"], nil);
    
    // Test an invalid national number without raw input is just formatted as the
    // national number.
    STAssertEqualObjects(@"650253000", [phoneUtil formatInOriginalFormat:US_SHORT_BY_ONE_NUMBER regionCallingFrom:@"US"], nil);


#pragma mark - testIsPremiumRate
    NBEPhoneNumberType numberTest = 0;
    STAssertEquals(PREMIUM_RATE, [phoneUtil getNumberType:US_PREMIUM], nil);
    
    NBPhoneNumber *premiumRateNumber = [[NBPhoneNumber alloc] init];
    premiumRateNumber = [[NBPhoneNumber alloc] init];
    [premiumRateNumber setCountryCode:@"39"];
    [premiumRateNumber setNationalNumber:@"892123"];
    STAssertEquals(PREMIUM_RATE, [phoneUtil getNumberType:premiumRateNumber], nil);
    
    premiumRateNumber = [[NBPhoneNumber alloc] init];
    [premiumRateNumber setCountryCode:@"44"];
    [premiumRateNumber setNationalNumber:@"9187654321"];
    STAssertEquals(PREMIUM_RATE, [phoneUtil getNumberType:premiumRateNumber], nil);
    
    premiumRateNumber = [[NBPhoneNumber alloc] init];
    [premiumRateNumber setCountryCode:@"49"];
    [premiumRateNumber setNationalNumber:@"9001654321"];
    STAssertEquals(PREMIUM_RATE, [phoneUtil getNumberType:premiumRateNumber], nil);
    
    premiumRateNumber = [[NBPhoneNumber alloc] init];
    [premiumRateNumber setCountryCode:@"49"];
    [premiumRateNumber setNationalNumber:@"90091234567"];
    STAssertEquals(PREMIUM_RATE, [phoneUtil getNumberType:premiumRateNumber], nil);
    STAssertEquals(PREMIUM_RATE, [phoneUtil getNumberType:UNIVERSAL_PREMIUM_RATE], nil);

#pragma mark - testIsTollFree
    numberTest = 0;
    
    NBPhoneNumber *tollFreeNumber = [[NBPhoneNumber alloc] init];
    
    [tollFreeNumber setCountryCode:@"1"];
    [tollFreeNumber setNationalNumber:@"8881234567"];
    STAssertEquals(TOLL_FREE, [phoneUtil getNumberType:tollFreeNumber], nil);
    
    tollFreeNumber = [[NBPhoneNumber alloc] init];
    [tollFreeNumber setCountryCode:@"39"];
    [tollFreeNumber setNationalNumber:@"803123"];
    STAssertEquals(TOLL_FREE, [phoneUtil getNumberType:tollFreeNumber], nil);
    
    tollFreeNumber = [[NBPhoneNumber alloc] init];
    [tollFreeNumber setCountryCode:@"44"];
    [tollFreeNumber setNationalNumber:@"8012345678"];
    STAssertEquals(TOLL_FREE, [phoneUtil getNumberType:tollFreeNumber], nil);
    
    tollFreeNumber = [[NBPhoneNumber alloc] init];
    [tollFreeNumber setCountryCode:@"49"];
    [tollFreeNumber setNationalNumber:@"8001234567"];
    STAssertEquals(TOLL_FREE, [phoneUtil getNumberType:tollFreeNumber], nil);
    
    STAssertEquals(TOLL_FREE, [phoneUtil getNumberType:INTERNATIONAL_TOLL_FREE], nil);

#pragma mark - testIsMobile
    numberTest = 0;
    STAssertEquals(MOBILE, [phoneUtil getNumberType:BS_MOBILE], nil);
    STAssertEquals(MOBILE, [phoneUtil getNumberType:GB_MOBILE], nil);
    STAssertEquals(MOBILE, [phoneUtil getNumberType:IT_MOBILE], nil);
    STAssertEquals(MOBILE, [phoneUtil getNumberType:AR_MOBILE], nil);
    
    NBPhoneNumber *mobileNumber = [[NBPhoneNumber alloc] init];
    [mobileNumber setCountryCode:@"49"];
    [mobileNumber setNationalNumber:@"15123456789"];
    STAssertEquals(MOBILE, [phoneUtil getNumberType:mobileNumber], nil);

#pragma mark - testIsFixedLine
    numberTest = 0;
    STAssertEquals(FIXED_LINE, [phoneUtil getNumberType:BS_NUMBER], nil);
    STAssertEquals(FIXED_LINE, [phoneUtil getNumberType:IT_NUMBER], nil);
    STAssertEquals(FIXED_LINE, [phoneUtil getNumberType:GB_NUMBER], nil);
    STAssertEquals(FIXED_LINE, [phoneUtil getNumberType:DE_NUMBER], nil);

#pragma mark - testIsFixedLineAndMobile
    numberTest = 0;
    STAssertEquals(FIXED_LINE_OR_MOBILE, [phoneUtil getNumberType:US_NUMBER], nil);
    
    NBPhoneNumber *fixedLineAndMobileNumber = [[NBPhoneNumber alloc] init];
    [fixedLineAndMobileNumber setCountryCode:@"54"];
    [fixedLineAndMobileNumber setNationalNumber:@"1987654321"];
    STAssertEquals(FIXED_LINE_OR_MOBILE, [phoneUtil getNumberType:fixedLineAndMobileNumber], nil);

#pragma mark - testIsSharedCost
    numberTest = 0;
    
    NBPhoneNumber *gbNumber = [[NBPhoneNumber alloc] init];
    [gbNumber setCountryCode:@"44"];
    [gbNumber setNationalNumber:@"8431231234"];
    STAssertEquals(SHARED_COST, [phoneUtil getNumberType:gbNumber], nil);

#pragma mark - testIsVoip
    numberTest = 0;
    
    gbNumber = [[NBPhoneNumber alloc] init];
    [gbNumber setCountryCode:@"44"];
    [gbNumber setNationalNumber:@"5631231234"];
    STAssertEquals(VOIP, [phoneUtil getNumberType:gbNumber], nil);

#pragma mark - testIsPersonalNumber
    numberTest = 0;
    
    gbNumber = [[NBPhoneNumber alloc] init];
    [gbNumber setCountryCode:@"44"];
    [gbNumber setNationalNumber:@"7031231234"];
    STAssertEquals(PERSONAL_NUMBER, [phoneUtil getNumberType:gbNumber], nil);

#pragma mark - testIsUnknown
    numberTest = 0;
    // Invalid numbers should be of type UNKNOWN.
    STAssertEquals(UNKNOWN, [phoneUtil getNumberType:US_LOCAL_NUMBER], nil);

#pragma mark - testisValidNumber:) {
    STAssertTrue([phoneUtil isValidNumber:US_NUMBER], nil);
    STAssertTrue([phoneUtil isValidNumber:IT_NUMBER], nil);
    STAssertTrue([phoneUtil isValidNumber:GB_MOBILE], nil);
    STAssertTrue([phoneUtil isValidNumber:INTERNATIONAL_TOLL_FREE], nil);
    STAssertTrue([phoneUtil isValidNumber:UNIVERSAL_PREMIUM_RATE], nil);
    
    nzNumber = [[NBPhoneNumber alloc] init];
    [nzNumber setCountryCode:@"64"];
    [nzNumber setNationalNumber:@"21387835"];
    STAssertTrue([phoneUtil isValidNumber:nzNumber], nil);

#pragma mark - testIsValidForRegion
    // This number is valid for the Bahamas, but is not a valid US number.
    STAssertTrue([phoneUtil isValidNumber:BS_NUMBER], nil);
    STAssertTrue([phoneUtil isValidNumberForRegion:BS_NUMBER regionCode:@"BS"], nil);
    STAssertFalse([phoneUtil isValidNumberForRegion:BS_NUMBER regionCode:@"US"], nil);
    
    NBPhoneNumber *bsInvalidNumber = [[NBPhoneNumber alloc] init];
    [bsInvalidNumber setCountryCode:@"1"];
    [bsInvalidNumber setNationalNumber:@"2421232345"];
    // This number is no longer valid.
    STAssertFalse([phoneUtil isValidNumber:bsInvalidNumber], nil);
    
    // La Mayotte and Reunion use 'leadingDigits' to differentiate them.
    
    NBPhoneNumber *reNumber = [[NBPhoneNumber alloc] init];
    [reNumber setCountryCode:@"262"];
    [reNumber setNationalNumber:@"262123456"];
    STAssertTrue([phoneUtil isValidNumber:reNumber], nil);
    STAssertTrue([phoneUtil isValidNumberForRegion:reNumber regionCode:@"RE"], nil);
    STAssertFalse([phoneUtil isValidNumberForRegion:reNumber regionCode:@"YT"], nil);
    
    // Now change the number to be a number for La Mayotte.
    [reNumber setNationalNumber:@"269601234"];
    STAssertTrue([phoneUtil isValidNumberForRegion:reNumber regionCode:@"YT"], nil);
    STAssertFalse([phoneUtil isValidNumberForRegion:reNumber regionCode:@"RE"], nil);
    
    // This number is no longer valid for La Reunion.
    [reNumber setNationalNumber:@"269123456"];
    STAssertFalse([phoneUtil isValidNumberForRegion:reNumber regionCode:@"YT"], nil);
    STAssertFalse([phoneUtil isValidNumberForRegion:reNumber regionCode:@"RE"], nil);
    STAssertFalse([phoneUtil isValidNumber:reNumber], nil);
    
    // However, it should be recognised as from La Mayotte, since it is valid for
    // this region.
    STAssertEqualObjects(@"YT", [phoneUtil getRegionCodeForNumber:reNumber], nil);
    
    // This number is valid in both places.
    [reNumber setNationalNumber:@"800123456"];
    STAssertTrue([phoneUtil isValidNumberForRegion:reNumber regionCode:@"YT"], nil);
    STAssertTrue([phoneUtil isValidNumberForRegion:reNumber regionCode:@"RE"], nil);
    STAssertTrue([phoneUtil isValidNumberForRegion:INTERNATIONAL_TOLL_FREE regionCode:@"001"], nil);
    STAssertFalse([phoneUtil isValidNumberForRegion:INTERNATIONAL_TOLL_FREE regionCode:@"US"], nil);
    STAssertFalse([phoneUtil isValidNumberForRegion:INTERNATIONAL_TOLL_FREE regionCode:@"ZZ"], nil);
    
    NBPhoneNumber *invalidNumber = [[NBPhoneNumber alloc] init];
    // Invalid country calling codes.
    [invalidNumber setCountryCode:@"3923"];
    [invalidNumber setNationalNumber:@"2366"];
    STAssertFalse([phoneUtil isValidNumberForRegion:invalidNumber regionCode:@"ZZ"], nil);
    STAssertFalse([phoneUtil isValidNumberForRegion:invalidNumber regionCode:@"001"], nil);
    [invalidNumber setCountryCode:0];
    STAssertFalse([phoneUtil isValidNumberForRegion:invalidNumber regionCode:@"001"], nil);
    STAssertFalse([phoneUtil isValidNumberForRegion:invalidNumber regionCode:@"ZZ"], nil);


#pragma mark - testIsNotValidNumber
    STAssertFalse([phoneUtil isValidNumber:US_LOCAL_NUMBER], nil);
    
    invalidNumber = [[NBPhoneNumber alloc] init];
    [invalidNumber setCountryCode:@"39"];
    [invalidNumber setNationalNumber:@"23661830000"];
    [invalidNumber setItalianLeadingZero:NB_YES];
    STAssertFalse([phoneUtil isValidNumber:invalidNumber], nil);
    
    invalidNumber = [[NBPhoneNumber alloc] init];
    [invalidNumber setCountryCode:@"44"];
    [invalidNumber setNationalNumber:@"791234567"];
    STAssertFalse([phoneUtil isValidNumber:invalidNumber], nil);
    
    invalidNumber = [[NBPhoneNumber alloc] init];
    [invalidNumber setCountryCode:@""];
    [invalidNumber setNationalNumber:@"1234"];
    STAssertFalse([phoneUtil isValidNumber:invalidNumber], nil);
    
    invalidNumber = [[NBPhoneNumber alloc] init];
    [invalidNumber setCountryCode:@"64"];
    [invalidNumber setNationalNumber:@"3316005"];
    STAssertFalse([phoneUtil isValidNumber:invalidNumber], nil);
    
    invalidNumber = [[NBPhoneNumber alloc] init];
    // Invalid country calling codes.
    [invalidNumber setCountryCode:@"3923"];
    [invalidNumber setNationalNumber:@"2366"];
    STAssertFalse([phoneUtil isValidNumber:invalidNumber], nil);
    [invalidNumber setCountryCode:@"0"];
    STAssertFalse([phoneUtil isValidNumber:invalidNumber], nil);
    
    STAssertFalse([phoneUtil isValidNumber:INTERNATIONAL_TOLL_FREE_TOO_LONG], nil);

#pragma mark - testgetRegionCodeForCountryCode:) {
    STAssertEqualObjects(@"US", [phoneUtil getRegionCodeForCountryCode:@"1"], nil);
    STAssertEqualObjects(@"GB", [phoneUtil getRegionCodeForCountryCode:@"44"], nil);
    STAssertEqualObjects(@"DE", [phoneUtil getRegionCodeForCountryCode:@"49"], nil);
    STAssertEqualObjects(@"001", [phoneUtil getRegionCodeForCountryCode:@"800"], nil);
    STAssertEqualObjects(@"001", [phoneUtil getRegionCodeForCountryCode:@"979"], nil);

#pragma mark - testgetRegionCodeForNumber:) {
    STAssertEqualObjects(@"BS", [phoneUtil getRegionCodeForNumber:BS_NUMBER], nil);
    STAssertEqualObjects(@"US", [phoneUtil getRegionCodeForNumber:US_NUMBER], nil);
    STAssertEqualObjects(@"GB", [phoneUtil getRegionCodeForNumber:GB_MOBILE], nil);
    STAssertEqualObjects(@"001", [phoneUtil getRegionCodeForNumber:INTERNATIONAL_TOLL_FREE], nil);
    STAssertEqualObjects(@"001", [phoneUtil getRegionCodeForNumber:UNIVERSAL_PREMIUM_RATE], nil);

#pragma mark - testGetRegionCodesForCountryCode
    NSArray *regionCodesForNANPA = [phoneUtil getRegionCodesForCountryCode:@"1"];
    STAssertTrue([regionCodesForNANPA containsObject:@"US"], nil);
    STAssertTrue([regionCodesForNANPA containsObject:@"BS"], nil);
    STAssertTrue([[phoneUtil getRegionCodesForCountryCode:@"44"] containsObject:@"GB"], nil);
    STAssertTrue([[phoneUtil getRegionCodesForCountryCode:@"49"] containsObject:@"DE"], nil);
    STAssertTrue([[phoneUtil getRegionCodesForCountryCode:@"800"] containsObject:@"001"], nil);
    // Test with invalid country calling code.
    STAssertTrue([[phoneUtil getRegionCodesForCountryCode:@"-1"] count] == 0, nil);

#pragma mark - testGetCountryCodeForRegion
    STAssertEqualObjects(@"1", [phoneUtil getCountryCodeForRegion:@"US"], nil);
    STAssertEqualObjects(@"64", [phoneUtil getCountryCodeForRegion:@"NZ"], nil);
    STAssertEqualObjects(@"0", [phoneUtil getCountryCodeForRegion:nil], nil);
    STAssertEqualObjects(@"0", [phoneUtil getCountryCodeForRegion:@"ZZ"], nil);
    STAssertEqualObjects(@"0", [phoneUtil getCountryCodeForRegion:@"001"], nil);
    // CS is already deprecated so the library doesn't support it.
    STAssertEqualObjects(@"0", [phoneUtil getCountryCodeForRegion:@"CS"], nil);

#pragma mark - testGetNationalDiallingPrefixForRegion
    STAssertEqualObjects(@"1", [phoneUtil getNddPrefixForRegion:@"US" stripNonDigits:NO], nil);

    // Test non-main country to see it gets the national dialling prefix for the
    // main country with that country calling code.
    STAssertEqualObjects(@"1", [phoneUtil getNddPrefixForRegion:@"BS" stripNonDigits:NO], nil);
    STAssertEqualObjects(@"0", [phoneUtil getNddPrefixForRegion:@"NZ" stripNonDigits:NO], nil);

    // Test case with non digit in the national prefix.
    STAssertEqualObjects(@"0~0", [phoneUtil getNddPrefixForRegion:@"AO" stripNonDigits:NO], nil);
    STAssertEqualObjects(@"00", [phoneUtil getNddPrefixForRegion:@"AO" stripNonDigits:YES], nil);

    // Test cases with invalid regions.
    STAssertNil([phoneUtil getNddPrefixForRegion:nil stripNonDigits:NO], nil);
    STAssertNil([phoneUtil getNddPrefixForRegion:@"ZZ" stripNonDigits:NO], nil);
    STAssertNil([phoneUtil getNddPrefixForRegion:@"001" stripNonDigits:NO], nil);

    // CS is already deprecated so the library doesn't support it.
    STAssertNil([phoneUtil getNddPrefixForRegion:@"CS" stripNonDigits:NO], nil);


#pragma mark - testIsNANPACountry
    STAssertTrue([phoneUtil isNANPACountry:@"US"], nil);
    STAssertTrue([phoneUtil isNANPACountry:@"BS"], nil);
    STAssertFalse([phoneUtil isNANPACountry:@"DE"], nil);
    STAssertFalse([phoneUtil isNANPACountry:@"ZZ"], nil);
    STAssertFalse([phoneUtil isNANPACountry:@"001"], nil);
    STAssertFalse([phoneUtil isNANPACountry:nil], nil);

                   
#pragma mark - testIsPossibleNumber
    STAssertTrue([phoneUtil isPossibleNumber:US_NUMBER], nil);
    STAssertTrue([phoneUtil isPossibleNumber:US_LOCAL_NUMBER], nil);
    STAssertTrue([phoneUtil isPossibleNumber:GB_NUMBER], nil);
    STAssertTrue([phoneUtil isPossibleNumber:INTERNATIONAL_TOLL_FREE], nil);
    
    STAssertTrue([phoneUtil isPossibleNumberString:@"+1 650 253 0000" regionDialingFrom:@"US"], nil);
    STAssertTrue([phoneUtil isPossibleNumberString:@"+1 650 GOO OGLE" regionDialingFrom:@"US"], nil);
    STAssertTrue([phoneUtil isPossibleNumberString:@"(650) 253-0000" regionDialingFrom:@"US"], nil);
    STAssertTrue([phoneUtil isPossibleNumberString:@"253-0000" regionDialingFrom:@"US"], nil);
    STAssertTrue([phoneUtil isPossibleNumberString:@"+1 650 253 0000" regionDialingFrom:@"GB"], nil);
    STAssertTrue([phoneUtil isPossibleNumberString:@"+44 20 7031 3000" regionDialingFrom:@"GB"], nil);
    STAssertTrue([phoneUtil isPossibleNumberString:@"(020) 7031 3000" regionDialingFrom:@"GB"], nil);
    STAssertTrue([phoneUtil isPossibleNumberString:@"7031 3000" regionDialingFrom:@"GB"], nil);
    STAssertTrue([phoneUtil isPossibleNumberString:@"3331 6005" regionDialingFrom:@"NZ"], nil);
    STAssertTrue([phoneUtil isPossibleNumberString:@"+800 1234 5678" regionDialingFrom:@"001"], nil);
                

#pragma mark - testIsPossibleNumberWithReason
    // National numbers for country calling code +1 that are within 7 to 10 digits
    // are possible.
    STAssertEquals(IS_POSSIBLE, [phoneUtil isPossibleNumberWithReason:US_NUMBER], nil);
    STAssertEquals(IS_POSSIBLE, [phoneUtil isPossibleNumberWithReason:US_LOCAL_NUMBER], nil);
    STAssertEquals(TOO_LONG, [phoneUtil isPossibleNumberWithReason:US_LONG_NUMBER], nil);
    
    number = [[NBPhoneNumber alloc] init];
    [number setCountryCode:@"0"];
    [number setNationalNumber:@"2530000"];
    STAssertEquals(INVALID_COUNTRY_CODE, [phoneUtil isPossibleNumberWithReason:number], nil);
    
    number = [[NBPhoneNumber alloc] init];
    [number setCountryCode:@"1"];
    [number setNationalNumber:@"253000"];
    STAssertEquals(TOO_SHORT, [phoneUtil isPossibleNumberWithReason:number], nil);
    
    number = [[NBPhoneNumber alloc] init];
    [number setCountryCode:@"65"];
    [number setNationalNumber:@"1234567890"];
    STAssertEquals(IS_POSSIBLE, [phoneUtil isPossibleNumberWithReason:number], nil);
    STAssertEquals(TOO_LONG, [phoneUtil isPossibleNumberWithReason:INTERNATIONAL_TOLL_FREE_TOO_LONG], nil);
    
    // Try with number that we don't have metadata for.
    
    NBPhoneNumber *adNumber = [[NBPhoneNumber alloc] init];
    [adNumber setCountryCode:@"376"];
    [adNumber setNationalNumber:@"12345"];
    STAssertEquals(IS_POSSIBLE, [phoneUtil isPossibleNumberWithReason:adNumber], nil);
    
    [adNumber setCountryCode:@"376"];
    [adNumber setNationalNumber:@"1"];
    STAssertEquals(TOO_SHORT, [phoneUtil isPossibleNumberWithReason:adNumber], nil);
    
    [adNumber setCountryCode:@"376"];
    [adNumber setNationalNumber:@"12345678901234567"];
    STAssertEquals(TOO_LONG, [phoneUtil isPossibleNumberWithReason:adNumber], nil);


#pragma mark - testIsNotPossibleNumber
    STAssertFalse([phoneUtil isPossibleNumber:US_LONG_NUMBER], nil);
    STAssertFalse([phoneUtil isPossibleNumber:INTERNATIONAL_TOLL_FREE_TOO_LONG], nil);
    
    number = [[NBPhoneNumber alloc] init];
    [number setCountryCode:@"1"];
    [number setNationalNumber:@"253000"];
    STAssertFalse([phoneUtil isPossibleNumber:number], nil);
    
    number = [[NBPhoneNumber alloc] init];
    [number setCountryCode:@"44"];
    [number setNationalNumber:@"300"];
    STAssertFalse([phoneUtil isPossibleNumber:number], nil);
    STAssertFalse([phoneUtil isPossibleNumberString:@"+1 650 253 00000" regionDialingFrom:@"US"], nil);
    STAssertFalse([phoneUtil isPossibleNumberString:@"(650) 253-00000" regionDialingFrom:@"US"], nil);
    STAssertFalse([phoneUtil isPossibleNumberString:@"I want a Pizza" regionDialingFrom:@"US"], nil);
    STAssertFalse([phoneUtil isPossibleNumberString:@"253-000" regionDialingFrom:@"US"], nil);
    STAssertFalse([phoneUtil isPossibleNumberString:@"1 3000" regionDialingFrom:@"GB"], nil);
    STAssertFalse([phoneUtil isPossibleNumberString:@"+44 300" regionDialingFrom:@"GB"], nil);
    STAssertFalse([phoneUtil isPossibleNumberString:@"+800 1234 5678 9" regionDialingFrom:@"001"], nil);


#pragma mark - testTruncateTooLongNumber
    
    // GB number 080 1234 5678, but entered with 4 extra digits at the end.
    NBPhoneNumber *tooLongNumber = [[NBPhoneNumber alloc] init];
    [tooLongNumber setCountryCode:@"44"];
    [tooLongNumber setNationalNumber:@"80123456780123"];
    
    NBPhoneNumber *validNumber = [[NBPhoneNumber alloc] init];
    [validNumber setCountryCode:@"44"];
    [validNumber setNationalNumber:@"8012345678"];
    STAssertTrue([phoneUtil truncateTooLongNumber:tooLongNumber], nil);
    STAssertTrue([validNumber isEqual:tooLongNumber], nil);
    
    // IT number 022 3456 7890, but entered with 3 extra digits at the end.
    tooLongNumber = [[NBPhoneNumber alloc] init];
    [tooLongNumber setCountryCode:@"39"];
    [tooLongNumber setNationalNumber:@"2234567890123"];
    [tooLongNumber setItalianLeadingZero:NB_YES];
                                         
    validNumber = [[NBPhoneNumber alloc] init];
    [validNumber setCountryCode:@"39"];
    [validNumber setNationalNumber:@"2234567890"];
    [validNumber setItalianLeadingZero:NB_YES];
    STAssertTrue([phoneUtil truncateTooLongNumber:tooLongNumber], nil);
    STAssertTrue([validNumber isEqual:tooLongNumber], nil);
    
    // US number 650-253-0000, but entered with one additional digit at the end.
    tooLongNumber = [US_LONG_NUMBER copy];
    STAssertTrue([phoneUtil truncateTooLongNumber:tooLongNumber], nil);
    STAssertTrue([US_NUMBER isEqual:tooLongNumber], nil);
    
    tooLongNumber = [INTERNATIONAL_TOLL_FREE_TOO_LONG copy];
    STAssertTrue([phoneUtil truncateTooLongNumber:tooLongNumber], nil);
    STAssertTrue([INTERNATIONAL_TOLL_FREE isEqual:tooLongNumber], nil);
    
    // Tests what happens when a valid number is passed in.
    
    NBPhoneNumber *validNumberCopy = [validNumber copy];
    STAssertTrue([phoneUtil truncateTooLongNumber:validNumber], nil);
    // Tests the number is not modified.
    STAssertTrue([validNumber isEqual:validNumberCopy], nil);
    
    // Tests what happens when a number with invalid prefix is passed in.
    
    NBPhoneNumber *numberWithInvalidPrefix = [[NBPhoneNumber alloc] init];
    // The test metadata says US numbers cannot have prefix 240.
    [numberWithInvalidPrefix setCountryCode:@"1"];
    [numberWithInvalidPrefix setNationalNumber:@"2401234567"];
    
    NBPhoneNumber *invalidNumberCopy = [numberWithInvalidPrefix copy];
    STAssertFalse([phoneUtil truncateTooLongNumber:numberWithInvalidPrefix], nil);
    // Tests the number is not modified.
    STAssertTrue([numberWithInvalidPrefix isEqual:invalidNumberCopy], nil);
    
    // Tests what happens when a too short number is passed in.
    
    NBPhoneNumber *tooShortNumber = [[NBPhoneNumber alloc] init];
    [tooShortNumber setCountryCode:@"1"];
    [tooShortNumber setNationalNumber:@"1234"];
    
    NBPhoneNumber *tooShortNumberCopy = [tooShortNumber copy];
    STAssertFalse([phoneUtil truncateTooLongNumber:tooShortNumber], nil);
    // Tests the number is not modified.
    STAssertTrue([tooShortNumber isEqual:tooShortNumberCopy], nil);


#pragma mark - testIsViablePhoneNumber
    NSLog(@"-------------- testIsViablePhoneNumber");
    STAssertFalse([phoneUtil isViablePhoneNumber:@"1"], nil);
    // Only one or two digits before strange non-possible punctuation.
    STAssertFalse([phoneUtil isViablePhoneNumber:@"1+1+1"], nil);
    STAssertFalse([phoneUtil isViablePhoneNumber:@"80+0"], nil);
    // Two digits is viable.
    STAssertTrue([phoneUtil isViablePhoneNumber:@"00"], nil);
    STAssertTrue([phoneUtil isViablePhoneNumber:@"111"], nil);
    // Alpha numbers.
    STAssertTrue([phoneUtil isViablePhoneNumber:@"0800-4-pizza"], nil);
    STAssertTrue([phoneUtil isViablePhoneNumber:@"0800-4-PIZZA"], nil);
    // We need at least three digits before any alpha characters.
    STAssertFalse([phoneUtil isViablePhoneNumber:@"08-PIZZA"], nil);
    STAssertFalse([phoneUtil isViablePhoneNumber:@"8-PIZZA"], nil);
    STAssertFalse([phoneUtil isViablePhoneNumber:@"12. March"], nil);


#pragma mark - testIsViablePhoneNumberNonAscii
    NSLog(@"-------------- testIsViablePhoneNumberNonAscii");
    // Only one or two digits before possible punctuation followed by more digits.
    STAssertTrue([phoneUtil isViablePhoneNumber:@"1\u300034"], nil);
    STAssertFalse([phoneUtil isViablePhoneNumber:@"1\u30003+4"], nil);
    // Unicode variants of possible starting character and other allowed
    // punctuation/digits.
    STAssertTrue([phoneUtil isViablePhoneNumber:@"\uFF081\uFF09\u30003456789"], nil);
    // Testing a leading + is okay.
    STAssertTrue([phoneUtil isViablePhoneNumber:@"+1\uFF09\u30003456789"], nil);


#pragma mark - testExtractPossibleNumber
    NSLog(@"-------------- testExtractPossibleNumber");
    // Removes preceding funky punctuation and letters but leaves the rest
    // untouched.
    STAssertEqualObjects(@"0800-345-600", [phoneUtil extractPossibleNumber:@"Tel:0800-345-600"], nil);
    STAssertEqualObjects(@"0800 FOR PIZZA", [phoneUtil extractPossibleNumber:@"Tel:0800 FOR PIZZA"], nil);
    // Should not remove plus sign
    STAssertEqualObjects(@"+800-345-600", [phoneUtil extractPossibleNumber:@"Tel:+800-345-600"], nil);
    // Should recognise wide digits as possible start values.
    STAssertEqualObjects(@"\uFF10\uFF12\uFF13", [phoneUtil extractPossibleNumber:@"\uFF10\uFF12\uFF13"], nil);
    // Dashes are not possible start values and should be removed.
    STAssertEqualObjects(@"\uFF11\uFF12\uFF13", [phoneUtil extractPossibleNumber:@"Num-\uFF11\uFF12\uFF13"], nil);
    // If not possible number present, return empty string.
    STAssertEqualObjects(@"", [phoneUtil extractPossibleNumber:@"Num-...."], nil);
    // Leading brackets are stripped - these are not used when parsing.
    STAssertEqualObjects(@"650) 253-0000", [phoneUtil extractPossibleNumber:@"(650) 253-0000"], nil);
    
    // Trailing non-alpha-numeric characters should be removed.
    STAssertEqualObjects(@"650) 253-0000", [phoneUtil extractPossibleNumber:@"(650) 253-0000..- .."], nil);
    STAssertEqualObjects(@"650) 253-0000", [phoneUtil extractPossibleNumber:@"(650) 253-0000."], nil);
    // This case has a trailing RTL char.
    STAssertEqualObjects(@"650) 253-0000", [phoneUtil extractPossibleNumber:@"(650) 253-0000\u200F"], nil);

    
#pragma mark - testMaybeStripNationalPrefix
    NSLog(@"-------------- testMaybeStripNationalPrefix");
    metadata = [[NBPhoneMetaData alloc] init];
    [metadata setNationalPrefixForParsing:@"34"];
    
    NBPhoneNumberDesc *generalDesc = [[NBPhoneNumberDesc alloc] init];
    [generalDesc setNationalNumberPattern:@"\\d{4,8}"];
    [metadata setGeneralDesc:generalDesc];
    
    NBPhoneNumber *numberToStrip = [[NBPhoneNumber alloc] init];
    [numberToStrip setRawInput:@"34356778"];
    
    NSString *strippedNumber = @"356778";
    NSString *rawInput = numberToStrip.rawInput;
    STAssertTrue([phoneUtil maybeStripNationalPrefixAndCarrierCode:&rawInput metadata:metadata carrierCode:nil], nil);
    STAssertEqualObjects(strippedNumber, rawInput, @"Should have had national prefix stripped.");
    
    // Retry stripping - now the number should not start with the national prefix,
    // so no more stripping should occur.
    STAssertFalse([phoneUtil maybeStripNationalPrefixAndCarrierCode:&rawInput metadata:metadata carrierCode:nil], nil);
    STAssertEqualObjects(strippedNumber, rawInput, @"Should have had no change - no national prefix present.");
                         
    // Some countries have no national prefix. Repeat test with none specified.
    [metadata setNationalPrefixForParsing:@""];
    STAssertFalse([phoneUtil maybeStripNationalPrefixAndCarrierCode:&rawInput metadata:metadata carrierCode:nil], nil);
    STAssertEqualObjects(strippedNumber, rawInput, @"Should not strip anything with empty national prefix.");

    // If the resultant number doesn't match the national rule, it shouldn't be
    // stripped.
    [metadata setNationalPrefixForParsing:@"3"];
    numberToStrip.rawInput = @"3123";
    rawInput = numberToStrip.rawInput;
    strippedNumber = @"3123";
    STAssertFalse([phoneUtil maybeStripNationalPrefixAndCarrierCode:&rawInput metadata:metadata carrierCode:nil], nil);
    STAssertEqualObjects(strippedNumber, rawInput, @"Should have had no change - after stripping, it would not have matched the national rule.");
    
    // Test extracting carrier selection code.
    [metadata setNationalPrefixForParsing:@"0(81)?"];
    numberToStrip.rawInput = @"08122123456";
    strippedNumber = @"22123456";
    rawInput = numberToStrip.rawInput;
    NSString *carrierCode = @"";
    STAssertTrue([phoneUtil maybeStripNationalPrefixAndCarrierCode:&rawInput metadata:metadata carrierCode:&carrierCode], nil);
    STAssertEqualObjects(@"81", carrierCode, nil);
    STAssertEqualObjects(strippedNumber, rawInput, @"Should have had national prefix and carrier code stripped.");
    
    // If there was a transform rule, check it was applied.
    [metadata setNationalPrefixTransformRule:@"5$15"];
    // Note that a capturing group is present here.
    [metadata setNationalPrefixForParsing:@"0(\\d{2})"];
    numberToStrip.rawInput = @"031123";
    rawInput = numberToStrip.rawInput;
    NSString *transformedNumber = @"5315123";
    STAssertTrue([phoneUtil maybeStripNationalPrefixAndCarrierCode:&rawInput metadata:metadata carrierCode:nil], nil);
    STAssertEqualObjects(transformedNumber, rawInput, @"Should transform the 031 to a 5315.");


#pragma mark - testMaybeStripInternationalPrefix
    NSLog(@"-------------- testMaybeStripInternationalPrefix");
    NSString *internationalPrefix = @"00[39]";
    
    numberToStrip = [[NBPhoneNumber alloc] init];
    [numberToStrip setRawInput:@"0034567700-3898003"];
    // Note the dash is removed as part of the normalization.
    
    strippedNumber = @"45677003898003";
    rawInput = numberToStrip.rawInput;
    STAssertEquals(FROM_NUMBER_WITH_IDD, [phoneUtil maybeStripInternationalPrefixAndNormalize:&rawInput
                                                                            possibleIddPrefix:internationalPrefix], nil);
    STAssertEqualObjects(strippedNumber, rawInput, @"The number supplied was not stripped of its international prefix.");
    // Now the number no longer starts with an IDD prefix, so it should now report
    // FROM_DEFAULT_COUNTRY.
    STAssertEquals(FROM_DEFAULT_COUNTRY, [phoneUtil maybeStripInternationalPrefixAndNormalize:&rawInput
                                                                                  possibleIddPrefix:internationalPrefix], nil);
    
    numberToStrip.rawInput = @"00945677003898003";
    rawInput = numberToStrip.rawInput;
    STAssertEquals(FROM_NUMBER_WITH_IDD, [phoneUtil maybeStripInternationalPrefixAndNormalize:&rawInput
                                                                            possibleIddPrefix:internationalPrefix], nil);
    STAssertEqualObjects(strippedNumber, rawInput, @"The number supplied was not stripped of its international prefix.");
    // Test it works when the international prefix is broken up by spaces.
    numberToStrip.rawInput = @"00 9 45677003898003";
    rawInput = numberToStrip.rawInput;
    STAssertEquals(FROM_NUMBER_WITH_IDD, [phoneUtil maybeStripInternationalPrefixAndNormalize:&rawInput
                                                                            possibleIddPrefix:internationalPrefix], nil);
    STAssertEqualObjects(strippedNumber, rawInput, @"The number supplied was not stripped of its international prefix.");
    // Now the number no longer starts with an IDD prefix, so it should now report
    // FROM_DEFAULT_COUNTRY.
    STAssertEquals(FROM_DEFAULT_COUNTRY, [phoneUtil maybeStripInternationalPrefixAndNormalize:&rawInput
                                                                            possibleIddPrefix:internationalPrefix], nil);
    
    // Test the + symbol is also recognised and stripped.
    numberToStrip.rawInput = @"+45677003898003";
    rawInput = numberToStrip.rawInput;
    strippedNumber = @"45677003898003";
    STAssertEquals(FROM_NUMBER_WITH_PLUS_SIGN, [phoneUtil maybeStripInternationalPrefixAndNormalize:&rawInput
                                                                                  possibleIddPrefix:internationalPrefix], nil);
    STAssertEqualObjects(strippedNumber, numberToStrip.rawInput, @"The number supplied was not stripped of the plus symbol.");
    
    // If the number afterwards is a zero, we should not strip this - no country
    // calling code begins with 0.
    numberToStrip.rawInput = @"0090112-3123";
    rawInput = numberToStrip.rawInput;
    strippedNumber = @"00901123123";
    STAssertEquals(FROM_DEFAULT_COUNTRY, [phoneUtil maybeStripInternationalPrefixAndNormalize:&rawInput
                                                                            possibleIddPrefix:internationalPrefix], nil);
    STAssertEqualObjects(strippedNumber, numberToStrip.rawInput, @"The number supplied had a 0 after the match so should not be stripped.");
    // Here the 0 is separated by a space from the IDD.
    numberToStrip.rawInput = @"009 0-112-3123";
    rawInput = numberToStrip.rawInput;
    STAssertEquals(FROM_DEFAULT_COUNTRY, [phoneUtil maybeStripInternationalPrefixAndNormalize:&rawInput
                                                                            possibleIddPrefix:internationalPrefix], nil);

#pragma mark - testMaybeExtractCountryCode
    NSLog(@"-------------- testMaybeExtractCountryCode");
    number = [[NBPhoneNumber alloc] init];
    metadata = [phoneUtil getMetadataForRegion:@"US"];
    
    // Note that for the US, the IDD is 011.
    NSString *phoneNumber = @"011112-3456789";
    strippedNumber = @"123456789";
    NSString *countryCallingCode = @"1";
    
    NSString *numberToFill = [[NSString alloc] init];
    STAssertEqualObjects(countryCallingCode, [phoneUtil maybeExtractCountryCode:phoneNumber metadata:metadata
                                                                 nationalNumber:&numberToFill keepRawInput:YES phoneNumber:&number], nil);
    STAssertEquals(FROM_NUMBER_WITH_IDD, number.countryCodeSource, @"Did not figure out CountryCodeSource correctly");
    // Should strip and normalize national significant number.
    STAssertEqualObjects(strippedNumber, numberToFill, @"Did not strip off the country calling code correctly.");
    
    number = [[NBPhoneNumber alloc] init];
    phoneNumber = @"+6423456789";
    countryCallingCode = @"64";
    numberToFill = [[NSString alloc] init];
    STAssertEqualObjects(countryCallingCode, [phoneUtil maybeExtractCountryCode:phoneNumber metadata:metadata
                                                                 nationalNumber:&numberToFill keepRawInput:YES phoneNumber:&number], nil);
    STAssertEquals(FROM_NUMBER_WITH_PLUS_SIGN, number.countryCodeSource, @"Did not figure out CountryCodeSource correctly");
    
    number = [[NBPhoneNumber alloc] init];
    phoneNumber = @"+80012345678";
    countryCallingCode = @"800";
    numberToFill = [[NSString alloc] init];
    STAssertEqualObjects(countryCallingCode, [phoneUtil maybeExtractCountryCode:phoneNumber metadata:metadata
                                             nationalNumber:&numberToFill keepRawInput:YES phoneNumber:&number], nil);
    STAssertEquals(FROM_NUMBER_WITH_PLUS_SIGN, number.countryCodeSource, @"Did not figure out CountryCodeSource correctly");
    
    number = [[NBPhoneNumber alloc] init];
    phoneNumber = @"2345-6789";
    numberToFill = [[NSString alloc] init];
    STAssertEqualObjects(phoneNumber, [phoneUtil maybeExtractCountryCode:phoneNumber metadata:metadata
                                             nationalNumber:&numberToFill  keepRawInput:YES phoneNumber:&number], nil);
    STAssertEquals(FROM_DEFAULT_COUNTRY, number.countryCodeSource, @"Did not figure out CountryCodeSource correctly");

                             
    number = [[NBPhoneNumber alloc] init];
    phoneNumber = @"0119991123456789";
    numberToFill = [[NSString alloc] init];
    [phoneUtil maybeExtractCountryCode:phoneNumber metadata:metadata
                        nationalNumber:&numberToFill keepRawInput:YES phoneNumber:&number];
    STFail(@"Should have thrown an exception, no valid country calling code present.");
    
    number = [[NBPhoneNumber alloc] init];
    phoneNumber = @"(1 610) 619 4466";
    countryCallingCode = @"1";
    numberToFill = [[NSString alloc] init];
    STAssertEqualObjects(@"Should have extracted the country calling code of the region passed in",
                 countryCallingCode,
                 [phoneUtil maybeExtractCountryCode:phoneNumber metadata:metadata
                                     nationalNumber:&numberToFill keepRawInput:YES phoneNumber:&number], nil);
    STAssertEquals(FROM_NUMBER_WITHOUT_PLUS_SIGN, number.countryCodeSource, @"Did not figure out CountryCodeSource correctly");
    
    number = [[NBPhoneNumber alloc] init];
    phoneNumber = @"(1 610) 619 4466";
    countryCallingCode = @"1";
    numberToFill = [[NSString alloc] init];
    STAssertEqualObjects(countryCallingCode, [phoneUtil maybeExtractCountryCode:phoneNumber metadata:metadata
                                                                    nationalNumber:&numberToFill keepRawInput:NO phoneNumber:&number], nil);
    //STAssertFalse(number.countryCode != nil, @"Should not contain CountryCodeSource.");
            
    number = [[NBPhoneNumber alloc] init];
    phoneNumber = @"(1 610) 619 446";
    numberToFill = [[NSString alloc] init];
    STAssertEqualObjects(0, [phoneUtil maybeExtractCountryCode:phoneNumber metadata:metadata
                                                nationalNumber:&numberToFill keepRawInput:NO phoneNumber:&number], nil);
    STAssertFalse(number.countryCode != nil, @"Should not contain CountryCodeSource.");

                      
    number = [[NBPhoneNumber alloc] init];
    phoneNumber = @"(1 610) 619";
    numberToFill = [[NSString alloc] init];
    STAssertEqualObjects(@"0", [phoneUtil maybeExtractCountryCode:phoneNumber metadata:metadata
                                                   nationalNumber:&numberToFill keepRawInput:YES phoneNumber:&number], nil);
    STAssertEquals(FROM_DEFAULT_COUNTRY,number.countryCodeSource, nil);


#pragma mark - testParseNationalNumber
    NSLog(@"-------------- testParseNationalNumber");
    // National prefix attached.
    STAssertTrue([NZ_NUMBER isEqual:[phoneUtil parse:@"033316005" defaultRegion:@"NZ"]], nil);
    STAssertTrue([NZ_NUMBER isEqual:[phoneUtil parse:@"33316005" defaultRegion:@"NZ"]], nil);
    
    // National prefix attached and some formatting present.
    STAssertTrue([NZ_NUMBER isEqual:[phoneUtil parse:@"03-331 6005" defaultRegion:@"NZ"]], nil);
    STAssertTrue([NZ_NUMBER isEqual:[phoneUtil parse:@"03 331 6005" defaultRegion:@"NZ"]], nil);
    
    // Test parsing RFC3966 format with a phone context.
    STAssertTrue([NZ_NUMBER isEqual:[phoneUtil parse:@"tel:03-331-6005;phone-context=+64" defaultRegion:@"NZ"]], nil);
    STAssertTrue([NZ_NUMBER isEqual:[phoneUtil parse:@"tel:331-6005;phone-context=+64-3" defaultRegion:@"NZ"]], nil);
    STAssertTrue([NZ_NUMBER isEqual:[phoneUtil parse:@"tel:331-6005;phone-context=+64-3" defaultRegion:@"US"]], nil);
                  
    // Test parsing RFC3966 format with optional user-defined parameters. The
    // parameters will appear after the context if present.
    STAssertTrue([NZ_NUMBER isEqual:[phoneUtil parse:@"tel:03-331-6005;phone-context=+64;a=%A1" defaultRegion:@"NZ"]], nil);
    
    // Test parsing RFC3966 with an ISDN subaddress.
    STAssertTrue([NZ_NUMBER isEqual:[phoneUtil parse:@"tel:03-331-6005;isub=12345;phone-context=+64" defaultRegion:@"NZ"]], nil);
    STAssertTrue([NZ_NUMBER isEqual:[phoneUtil parse:@"tel:+64-3-331-6005;isub=12345" defaultRegion:@"NZ"]], nil);

    // Testing international prefixes.
    // Should strip country calling code.
    STAssertTrue([NZ_NUMBER isEqual:[phoneUtil parse:@"0064 3 331 6005" defaultRegion:@"NZ"]], nil);

    // Try again, but this time we have an international number with Region Code
    // US. It should recognise the country calling code and parse accordingly.
    STAssertTrue([NZ_NUMBER isEqual:[phoneUtil parse:@"01164 3 331 6005" defaultRegion:@"US"]], nil);
    STAssertTrue([NZ_NUMBER isEqual:[phoneUtil parse:@"+64 3 331 6005" defaultRegion:@"US"]], nil);
    // We should ignore the leading plus here, since it is not followed by a valid
    // country code but instead is followed by the IDD for the US.
    STAssertTrue([NZ_NUMBER isEqual:[phoneUtil parse:@"+01164 3 331 6005" defaultRegion:@"US"]], nil);
    STAssertTrue([NZ_NUMBER isEqual:[phoneUtil parse:@"+0064 3 331 6005" defaultRegion:@"NZ"]], nil);
    STAssertTrue([NZ_NUMBER isEqual:[phoneUtil parse:@"+ 00 64 3 331 6005" defaultRegion:@"NZ"]], nil);
    
    STAssertTrue([US_LOCAL_NUMBER isEqual:[phoneUtil parse:@"tel:253-0000;phone-context=www.google.com" defaultRegion:@"US"]], nil);
    STAssertTrue([US_LOCAL_NUMBER isEqual:[phoneUtil parse:@"tel:253-0000;isub=12345;phone-context=www.google.com" defaultRegion:@"US"]], nil);
    // This is invalid because no "+" sign is present as part of phone-context.
    // The phone context is simply ignored in this case just as if it contains a
    // domain.
    STAssertTrue([US_LOCAL_NUMBER isEqual:[phoneUtil parse:@"tel:2530000;isub=12345;phone-context=1-650" defaultRegion:@"US"]], nil);
    STAssertTrue([US_LOCAL_NUMBER isEqual:[phoneUtil parse:@"tel:2530000;isub=12345;phone-context=1234.com" defaultRegion:@"US"]], nil);
    
    
    nzNumber = [[NBPhoneNumber alloc] init];
    [nzNumber setCountryCode:@"64"];
    [nzNumber setNationalNumber:@"64123456"];
    STAssertTrue([nzNumber isEqual:[phoneUtil parse:@"64(0)64123456" defaultRegion:@"NZ"]], nil);
    // Check that using a '/' is fine in a phone number.
    STAssertTrue([DE_NUMBER isEqual:[phoneUtil parse:@"301/23456" defaultRegion:@"DE"]], nil);
    
    
    usNumber = [[NBPhoneNumber alloc] init];
    // Check it doesn't use the '1' as a country calling code when parsing if the
    // phone number was already possible.
    [usNumber setCountryCode:@"1"];
    [usNumber setNationalNumber:@"1234567890"];
    STAssertTrue([usNumber isEqual:[phoneUtil parse:@"123-456-7890" defaultRegion:@"US"]], nil);
    
    // Test star numbers. Although this is not strictly valid, we would like to
    // make sure we can parse the output we produce when formatting the number.
    STAssertTrue([JP_STAR_NUMBER isEqual:[phoneUtil parse:@"+81 *2345" defaultRegion:@"JP"]], nil);
    
    NBPhoneNumber *shortNumber = [[NBPhoneNumber alloc] init];
    [shortNumber setCountryCode:@"64"];
    [shortNumber setNationalNumber:@"12"];
    STAssertTrue([shortNumber isEqual:[phoneUtil parse:@"12" defaultRegion:@"NZ"]], nil);
    
    NSLog(@"--------------------------------------------------------------------------- end");

/*
#pragma mark - testParseNumberWithAlphaCharacters
    // Test case with alpha characters.
    
    id tollfreeNumber = [[NBPhoneNumber alloc] init];
    tollfreeNumber setCountryCode:64];
    tollfreeNumber setNationalNumber:800332005];
    STAssertTrue(tollfreeNumber isEqual:
                                     [phoneUtil parse:@"0800 DDA 005", @"NZ)], nil);
    
    id premiumNumber = [[NBPhoneNumber alloc] init];
    premiumNumber setCountryCode:64];
    premiumNumber setNationalNumber:9003326005];
    STAssertTrue(premiumNumber isEqual:
                                    [phoneUtil parse:@"0900 DDA 6005", @"NZ)], nil);
    // Not enough alpha characters for them to be considered intentional, so they
    // are stripped.
    STAssertTrue(premiumNumber isEqual:
                                    [phoneUtil parse:@"0900 332 6005a", @"NZ)], nil);
    STAssertTrue(premiumNumber isEqual:
                                    [phoneUtil parse:@"0900 332 600a5", @"NZ)], nil);
    STAssertTrue(premiumNumber isEqual:
                                    [phoneUtil parse:@"0900 332 600A5", @"NZ)], nil);
    STAssertTrue(premiumNumber isEqual:
                                    [phoneUtil parse:@"0900 a332 600A5", @"NZ)], nil);

#pragma mark - testParseMaliciousInput:) {
    // Lots of leading + signs before the possible number.
    
    id maliciousNumber = ];
    for (id i = 0; i < 6000; i++) {
        maliciousNumber.append(@"+"];
    }
    maliciousNumber.append(@"12222-33-244 extensioB 343+"];
    try {
        [phoneUtil parse:maliciousNumber.toString(), @"US];
        fail(@"This should not parse without throwing an exception " +
             maliciousNumber.toString];
    } catch (e) {
        // Expected this exception.
        STAssertEqualObjects(@"Wrong error type stored in exception.",
                     Error.TOO_LONG,
                     e];
    }
    
    id maliciousNumberWithAlmostExt = ];
    for (i = 0; i < 350; i++) {
        maliciousNumberWithAlmostExt.append(@"200"];
    }
    maliciousNumberWithAlmostExt.append(@" extensiOB 345"];
    try {
        [phoneUtil parse:maliciousNumberWithAlmostExt.toString(), @"US];
        fail(@"This should not parse without throwing an exception " +
             maliciousNumberWithAlmostExt.toString];
    } catch (e) {
        // Expected this exception.
        STAssertEqualObjects(@"Wrong error type stored in exception.",
                     Error.TOO_LONG,
                     e];
    }

#pragma mark - testParseWithInternationalPrefixes
    STAssertTrue(US_NUMBER isEqual:
                                [phoneUtil parse:@"+1 (650) 253-0000", @"NZ)], nil);
    STAssertTrue(INTERNATIONAL_TOLL_FREE isEqual:
                                              [phoneUtil parse:@"011 800 1234 5678", @"US)], nil);
    STAssertTrue(US_NUMBER isEqual:
                                [phoneUtil parse:@"1-650-253-0000", @"US)], nil);
    // Calling the US number from Singapore by using different service providers
    // 1st test: calling using SingTel IDD service (IDD is 001)
    STAssertTrue(US_NUMBER isEqual:
                                [phoneUtil parse:@"0011-650-253-0000", @"SG)], nil);
    // 2nd test: calling using StarHub IDD service (IDD is 008)
    STAssertTrue(US_NUMBER isEqual:
                                [phoneUtil parse:@"0081-650-253-0000", @"SG)], nil);
    // 3rd test: calling using SingTel V019 service (IDD is 019)
    STAssertTrue(US_NUMBER isEqual:
                                [phoneUtil parse:@"0191-650-253-0000", @"SG)], nil);
    // Calling the US number from Poland
    STAssertTrue(US_NUMBER isEqual:
                                [phoneUtil parse:@"0~01-650-253-0000", @"PL)], nil);
    // Using '++' at the start.
    STAssertTrue(US_NUMBER isEqual:
                                [phoneUtil parse:@"++1 (650) 253-0000", @"PL)], nil);

#pragma mark - testParseNonAscii
    // Using a full-width plus sign.
    STAssertTrue(US_NUMBER isEqual:
                                [phoneUtil parse:@"\uFF0B1 (650) 253-0000", @"SG)], nil);
    // Using a soft hyphen U+00AD.
    STAssertTrue(US_NUMBER isEqual:
                                [phoneUtil parse:@"1 (650) 253\u00AD-0000", @"US)], nil);
    // The whole number, including punctuation, is here represented in full-width
    // form.
    STAssertTrue(US_NUMBER isEqual:
                                [phoneUtil parse:@"\uFF0B\uFF11\u3000\uFF08\uFF16\uFF15\uFF10\uFF09\u3000\uFF12\uFF15\uFF13\uFF0D\uFF10\uFF10\uFF10\uFF10",
                                                @"SG)], nil);
    // Using U+30FC dash instead.
    STAssertTrue(US_NUMBER isEqual:
                                [phoneUtil parse:@"\uFF0B\uFF11\u3000\uFF08\uFF16\uFF15\uFF10\uFF09\u3000\uFF12\uFF15\uFF13\u30FC\uFF10\uFF10\uFF10\uFF10",
                                                @"SG)], nil);
    
    // Using a very strange decimal digit range (Mongolian digits).
    // TODO(user): Support Mongolian digits
    // STAssertTrue(US_NUMBER isEqual:
    //     [phoneUtil parse:@"\u1811 \u1816\u1815\u1810 " +
    //                     '\u1812\u1815\u1813 \u1810\u1810\u1810\u1810",
    //                     @"US)], nil);

#pragma mark - testParseWithLeadingZero
    STAssertTrue(
               IT_NUMBER isEqual:[phoneUtil parse:@"+39 02-36618 300", @"NZ)], nil);
    STAssertTrue(
               IT_NUMBER isEqual:[phoneUtil parse:@"02-36618 300", @"IT)], nil);
    
    STAssertTrue(
               IT_MOBILE isEqual:[phoneUtil parse:@"345 678 901", @"IT)], nil);

#pragma mark - testParseNationalNumberArgentina
    // Test parsing mobile numbers of Argentina.
    
    id arNumber = [[NBPhoneNumber alloc] init];
    [arNumber setCountryCode:54];
    [arNumber setNationalNumber:93435551212];
    STAssertTrue(
               arNumber isEqual:[phoneUtil parse:@"+54 9 343 555 1212", @"AR)], nil);
    STAssertTrue(
               arNumber isEqual:[phoneUtil parse:@"0343 15 555 1212", @"AR)], nil);
    
    arNumber = [[NBPhoneNumber alloc] init];
    [arNumber setCountryCode:54];
    [arNumber setNationalNumber:93715654320];
    STAssertTrue(
               arNumber isEqual:[phoneUtil parse:@"+54 9 3715 65 4320", @"AR)], nil);
    STAssertTrue(
               arNumber isEqual:[phoneUtil parse:@"03715 15 65 4320", @"AR)], nil);
    STAssertTrue(
               AR_MOBILE isEqual:[phoneUtil parse:@"911 876 54321", @"AR)], nil);
    
    // Test parsing fixed-line numbers of Argentina.
    STAssertTrue(
               AR_NUMBER isEqual:[phoneUtil parse:@"+54 11 8765 4321", @"AR)], nil);
    STAssertTrue(
               AR_NUMBER isEqual:[phoneUtil parse:@"011 8765 4321", @"AR)], nil);
    
    arNumber = [[NBPhoneNumber alloc] init];
    [arNumber setCountryCode:54];
    [arNumber setNationalNumber:3715654321];
    STAssertTrue(
               arNumber isEqual:[phoneUtil parse:@"+54 3715 65 4321", @"AR)], nil);
    STAssertTrue(
               arNumber isEqual:[phoneUtil parse:@"03715 65 4321", @"AR)], nil);
    
    arNumber = [[NBPhoneNumber alloc] init];
    [arNumber setCountryCode:54];
    [arNumber setNationalNumber:2312340000];
    STAssertTrue(
               arNumber isEqual:[phoneUtil parse:@"+54 23 1234 0000", @"AR)], nil);
    STAssertTrue(
               arNumber isEqual:[phoneUtil parse:@"023 1234 0000", @"AR)], nil);

#pragma mark - testParseWithXInNumber
    // Test that having an 'x' in the phone number at the start is ok and that it
    // just gets removed.
    STAssertTrue(
               AR_NUMBER isEqual:[phoneUtil parse:@"01187654321", @"AR)], nil);
    STAssertTrue(
               AR_NUMBER isEqual:[phoneUtil parse:@"(0) 1187654321", @"AR)], nil);
    STAssertTrue(
               AR_NUMBER isEqual:[phoneUtil parse:@"0 1187654321", @"AR)], nil);
    STAssertTrue(
               AR_NUMBER isEqual:[phoneUtil parse:@"(0xx) 1187654321", @"AR)], nil);
    
    id arFromUs = [[NBPhoneNumber alloc] init];
    arFromUs setCountryCode:54];
    arFromUs setNationalNumber:81429712];
    // This test is intentionally constructed such that the number of digit after
    // xx is larger than 7, so that the number won't be mistakenly treated as an
    // extension, as we allow extensions up to 7 digits. This assumption is okay
    // for now as all the countries where a carrier selection code is written in
    // the form of xx have a national significant number of length larger than 7.
    STAssertTrue(
               arFromUs isEqual:[phoneUtil parse:@"011xx5481429712", @"US)], nil);

#pragma mark - testParseNumbersMexico
    // Test parsing fixed-line numbers of Mexico.
    
    id mxNumber = [[NBPhoneNumber alloc] init];
    mxNumber setCountryCode:52];
    mxNumber setNationalNumber:4499780001];
    STAssertTrue(mxNumber isEqual:
                               [phoneUtil parse:@"+52 (449)978-0001", @"MX)], nil);
    STAssertTrue(
               mxNumber isEqual:[phoneUtil parse:@"01 (449)978-0001", @"MX)], nil);
    STAssertTrue(
               mxNumber isEqual:[phoneUtil parse:@"(449)978-0001", @"MX)], nil);
    
    // Test parsing mobile numbers of Mexico.
    mxNumber = [[NBPhoneNumber alloc] init];
    mxNumber setCountryCode:52];
    mxNumber setNationalNumber:13312345678];
    STAssertTrue(mxNumber isEqual:
                               [phoneUtil parse:@"+52 1 33 1234-5678", @"MX)], nil);
    STAssertTrue(mxNumber isEqual:
                               [phoneUtil parse:@"044 (33) 1234-5678", @"MX)], nil);
    STAssertTrue(mxNumber isEqual:
                               [phoneUtil parse:@"045 33 1234-5678", @"MX)], nil);

#pragma mark - testFailedParseOnInvalidNumbers
    try {
        
        NSString *sentencePhoneNumber = @"This is not a phone number";
        [phoneUtil parse:sentencePhoneNumber, @"NZ];
        fail(@"This should not parse without throwing an exception " +
             sentencePhoneNumber];
    } catch (e) {
        // Expected this exception.
        STAssertEqualObjects(@"Wrong error type stored in exception.",
                     Error.NOT_A_NUMBER,
                     e];
    }
    try {
        sentencePhoneNumber = @"1 Still not a number";
        [phoneUtil parse:sentencePhoneNumber, @"NZ];
        fail(@"This should not parse without throwing an exception " +
             sentencePhoneNumber];
    } catch (e) {
        // Expected this exception.
        STAssertEqualObjects(@"Wrong error type stored in exception.",
                     Error.NOT_A_NUMBER,
                     e];
    }
    try {
        sentencePhoneNumber = @"1 MICROSOFT";
        [phoneUtil parse:sentencePhoneNumber, @"NZ];
        fail(@"This should not parse without throwing an exception " +
             sentencePhoneNumber];
    } catch (e) {
        // Expected this exception.
        STAssertEqualObjects(@"Wrong error type stored in exception.",
                     Error.NOT_A_NUMBER,
                     e];
    }
    try {
        sentencePhoneNumber = @"12 MICROSOFT";
        [phoneUtil parse:sentencePhoneNumber, @"NZ];
        fail(@"This should not parse without throwing an exception " +
             sentencePhoneNumber];
    } catch (e) {
        // Expected this exception.
        STAssertEqualObjects(@"Wrong error type stored in exception.",
                     Error.NOT_A_NUMBER,
                     e];
    }
    try {
        
        NSString *tooLongPhoneNumber = @"01495 72553301873 810104";
        [phoneUtil parse:tooLongPhoneNumber, @"GB];
        fail(@"This should not parse without throwing an exception " +
             [tooLongPhoneNumber];
    } catch (e) {
        // Expected this exception.
        STAssertEqualObjects(@"Wrong error type stored in exception.",
                     Error.TOO_LONG,
                     e];
    }
    try {
        
        NSString *plusMinusPhoneNumber = @"+---";
        [phoneUtil parse:plusMinusPhoneNumber, @"DE];
        fail(@"This should not parse without throwing an exception " +
             plusMinusPhoneNumber];
    } catch (e) {
        // Expected this exception.
        STAssertEqualObjects(@"Wrong error type stored in exception.",
                     Error.NOT_A_NUMBER,
                     e];
    }
    try {
        
        NSString *plusStar = @"+***";
        [phoneUtil parse:plusStar, @"DE];
        fail(@"This should not parse without throwing an exception " + plusStar];
    } catch (e) {
        // Expected this exception.
        STAssertEqualObjects(@"Wrong error type stored in exception.",
                     Error.NOT_A_NUMBER,
                     e];
    }
    try {
        
        NSString *plusStarPhoneNumber = @"+*******91";
        [phoneUtil parse:plusStarPhoneNumber, @"DE];
        fail(@"This should not parse without throwing an exception " +
             plusStarPhoneNumber];
    } catch (e) {
        // Expected this exception.
        STAssertEqualObjects(@"Wrong error type stored in exception.",
                     Error.NOT_A_NUMBER,
                     e];
    }
    try {
        
        NSString *tooShortPhoneNumber = @"+49 0";
        [phoneUtil parse:tooShortPhoneNumber, @"DE];
        fail(@"This should not parse without throwing an exception " +
             tooShortPhoneNumber];
    } catch (e) {
        // Expected this exception.
        STAssertEqualObjects(@"Wrong error type stored in exception.",
                     Error.TOO_SHORT_NSN,
                     e];
    }
    try {
        
        NSString *invalidCountryCode = @"+210 3456 56789";
        [phoneUtil parse:invalidCountryCode, @"NZ];
        fail(@"This is not a recognised region code: should fail: " +
             invalidCountryCode];
    } catch (e) {
        // Expected this exception.
        STAssertEqualObjects(@"Wrong error type stored in exception.",
                     Error.INVALID_COUNTRY_CODE,
                     e];
    }
    try {
        
        NSString *plusAndIddAndInvalidCountryCode = @"+ 00 210 3 331 6005";
        [phoneUtil parse:plusAndIddAndInvalidCountryCode, @"NZ];
        fail(@"This should not parse without throwing an exception."];
    } catch (e) {
        // Expected this exception. 00 is a correct IDD, but 210 is not a valid
        // country code.
        STAssertEqualObjects(@"Wrong error type stored in exception.",
                     Error.INVALID_COUNTRY_CODE,
                     e];
    }
    try {
        
        NSString *someNumber = @"123 456 7890";
        [phoneUtil parse:someNumber, @"ZZ];
        fail(@"Unknown region code not allowed: should fail."];
    } catch (e) {
        // Expected this exception.
        STAssertEqualObjects(@"Wrong error type stored in exception.",
                     Error.INVALID_COUNTRY_CODE,
                     e];
    }
    try {
        someNumber = @"123 456 7890";
        [phoneUtil parse:someNumber, @"CS];
        fail(@"Deprecated region code not allowed: should fail."];
    } catch (e) {
        // Expected this exception.
        STAssertEqualObjects(@"Wrong error type stored in exception.",
                     Error.INVALID_COUNTRY_CODE,
                     e];
    }
    try {
        someNumber = @"123 456 7890";
        [phoneUtil parse:someNumber, nil];
        fail(@"nil region code not allowed: should fail."];
    } catch (e) {
        // Expected this exception.
        STAssertEqualObjects(@"Wrong error type stored in exception.",
                     Error.INVALID_COUNTRY_CODE,
                     e];
    }
    try {
        someNumber = @"0044------";
        [phoneUtil parse:someNumber, @"GB];
        fail(@"No number provided, only region code: should fail"];
    } catch (e) {
        // Expected this exception.
        STAssertEqualObjects(@"Wrong error type stored in exception.",
                     Error.TOO_SHORT_AFTER_IDD,
                     e];
    }
    try {
        someNumber = @"0044";
        [phoneUtil parse:someNumber, @"GB];
        fail(@"No number provided, only region code: should fail"];
    } catch (e) {
        // Expected this exception.
        STAssertEqualObjects(@"Wrong error type stored in exception.",
                     Error.TOO_SHORT_AFTER_IDD,
                     e];
    }
    try {
        someNumber = @"011";
        [phoneUtil parse:someNumber, @"US];
        fail(@"Only IDD provided - should fail."];
    } catch (e) {
        // Expected this exception.
        STAssertEqualObjects(@"Wrong error type stored in exception.",
                     Error.TOO_SHORT_AFTER_IDD,
                     e];
    }
    try {
        someNumber = @"0119";
        [phoneUtil parse:someNumber, @"US];
        fail(@"Only IDD provided and then 9 - should fail."];
    } catch (e) {
        // Expected this exception.
        STAssertEqualObjects(@"Wrong error type stored in exception.",
                     Error.TOO_SHORT_AFTER_IDD,
                     e];
    }
    try {
        
        NSString *emptyNumber = @"";
        // Invalid region.
        [phoneUtil parse:emptyNumber, @"ZZ];
        fail(@"Empty string - should fail."];
    } catch (e) {
        // Expected this exception.
        STAssertEqualObjects(@"Wrong error type stored in exception.",
                     Error.NOT_A_NUMBER,
                     e];
    }
    try {
        // Invalid region.
        [phoneUtil parse:nil, @"ZZ];
        fail(@"nil string - should fail."];
    } catch (e) {
        // Expected this exception.
        STAssertEqualObjects(@"Wrong error type stored in exception.",
                     Error.NOT_A_NUMBER,
                     e];
    }
    try {
        [phoneUtil parse:nil, @"US];
        fail(@"nil string - should fail."];
    } catch (e) {
        // Expected this exception.
        STAssertEqualObjects(@"Wrong error type stored in exception.",
                     Error.NOT_A_NUMBER,
                     e];
    }
    try {
        
        NSString *domainRfcPhoneContext = @"tel:555-1234;phone-context=www.google.com";
        [phoneUtil parse:domainRfcPhoneContext, @"ZZ];
        fail(@"Unknown region code not allowed: should fail."];
    } catch (e) {
        // Expected this exception.
        STAssertEqualObjects(@"Wrong error type stored in exception.",
                     Error.INVALID_COUNTRY_CODE,
                     e];
    }
    try {
        // This is invalid because no '+' sign is present as part of phone-context.
        // This should not succeed in being parsed.
        
        NSString *invalidRfcPhoneContext = @"tel:555-1234;phone-context=1-331";
        [phoneUtil parse:invalidRfcPhoneContext, @"ZZ];
        fail(@"Unknown region code not allowed: should fail."];
    } catch (e) {
        // Expected this exception.
        STAssertEqualObjects(@"Wrong error type stored in exception.",
                     Error.INVALID_COUNTRY_CODE,
                     e];
    }

#pragma mark - testParseNumbersWithPlusWithNoRegion
    // @"ZZ is allowed only if the number starts with a '+' - then the
    // country calling code can be calculated.
    STAssertTrue(
               NZ_NUMBER isEqual:[phoneUtil parse:@"+64 3 331 6005", @"ZZ)], nil);
    // Test with full-width plus.
    STAssertTrue(
               NZ_NUMBER isEqual:[phoneUtil parse:@"\uFF0B64 3 331 6005", @"ZZ)], nil);
    // Test with normal plus but leading characters that need to be stripped.
    STAssertTrue(
               NZ_NUMBER isEqual:[phoneUtil parse:@"Tel: +64 3 331 6005", @"ZZ)], nil);
    STAssertTrue(
               NZ_NUMBER isEqual:[phoneUtil parse:@"+64 3 331 6005", nil)], nil);
    STAssertTrue(
               INTERNATIONAL_TOLL_FREE isEqual:[phoneUtil parse:@"+800 1234 5678", nil)], nil);
    STAssertTrue(
               UNIVERSAL_PREMIUM_RATE isEqual:[phoneUtil parse:@"+979 123 456 789", nil)], nil);
    
    // Test parsing RFC3966 format with a phone context.
    STAssertTrue(NZ_NUMBER isEqual:
                                [phoneUtil parse:@"tel:03-331-6005;phone-context=+64", @"ZZ)], nil);
    STAssertTrue(NZ_NUMBER isEqual:
                                [phoneUtil parse:@"  tel:03-331-6005;phone-context=+64", @"ZZ)], nil);
    STAssertTrue(NZ_NUMBER isEqual:
                                [phoneUtil parse:@"tel:03-331-6005;isub=12345;phone-context=+64",
                                                @"ZZ)], nil);
    
    // It is important that we set the carrier code to an empty string, since we
    // used ParseAndKeepRawInput and no carrier code was found.
    
    id nzNumberWithRawInput = [NZ_NUMBER copy];
    nzNumberWithRawInput setRawInput:@"+64 3 331 6005"];
    nzNumberWithRawInput setCountryCodeSource:PhoneNumber
                                              .CountryCodeSource.FROM_NUMBER_WITH_PLUS_SIGN];
    nzNumberWithRawInput setPreferredDomesticCarrierCode(@""];
    STAssertTrue(nzNumberWithRawInput isEqual:
                                           [phoneUtil parseAndKeepRawInput:@"+64 3 331 6005", @"ZZ)], nil);
    // nil is also allowed for the region code in these cases.
    STAssertTrue(nzNumberWithRawInput isEqual:
                                           [phoneUtil parseAndKeepRawInput:@"+64 3 331 6005", nil)], nil);

#pragma mark - testParseExtensions
    
    id nzNumber = [[NBPhoneNumber alloc] init];
    nzNumber setCountryCode:64];
    nzNumber setNationalNumber:33316005];
    nzNumber setExtension:@"3456"];
    STAssertTrue(nzNumber isEqual:
                               [phoneUtil parse:@"03 331 6005 ext 3456", @"NZ)], nil);
    STAssertTrue(nzNumber isEqual:
                               [phoneUtil parse:@"03-3316005x3456", @"NZ)], nil);
    STAssertTrue(nzNumber isEqual:
                               [phoneUtil parse:@"03-3316005 int.3456", @"NZ)], nil);
    STAssertTrue(nzNumber isEqual:
                               [phoneUtil parse:@"03 3316005 #3456", @"NZ)], nil);
    
    // Test the following do not extract extensions:
    STAssertTrue(ALPHA_NUMERIC_NUMBER isEqual:
                                           [phoneUtil parse:@"1800 six-flags", @"US)], nil);
    STAssertTrue(ALPHA_NUMERIC_NUMBER isEqual:
                                           [phoneUtil parse:@"1800 SIX FLAGS", @"US)], nil);
    STAssertTrue(ALPHA_NUMERIC_NUMBER isEqual:
                                           [phoneUtil parse:@"0~0 1800 7493 5247", @"PL)], nil);
    STAssertTrue(ALPHA_NUMERIC_NUMBER isEqual:
                                           [phoneUtil parse:@"(1800) 7493.5247", @"US)], nil);
    
    // Check that the last instance of an extension token is matched.
    
    id extnNumber = [ALPHA_NUMERIC_NUMBER copy];
    extnNumber setExtension:@"1234"];
    STAssertTrue(extnNumber isEqual:
                                 [phoneUtil parse:@"0~0 1800 7493 5247 ~1234", @"PL)], nil);
    
    // Verifying bug-fix where the last digit of a number was previously omitted
    // if it was a 0 when extracting the extension. Also verifying a few different
    // cases of extensions.
    
    id ukNumber = [[NBPhoneNumber alloc] init];
    ukNumber setCountryCode:44];
    ukNumber setNationalNumber:2034567890];
    ukNumber setExtension:@"456"];
    STAssertTrue([ukNumber isEqual:[phoneUtil parse:@"+44 2034567890x456", @"NZ"], nil);
    STAssertTrue([ukNumber isEqual:[phoneUtil parse:@"+44 2034567890x456", @"GB"], nil);
    STAssertTrue([ukNumber isEqual:[phoneUtil parse:@"+44 2034567890 x456", @"GB"], nil);
    STAssertTrue([ukNumber isEqual:[phoneUtil parse:@"+44 2034567890 X456", @"GB"], nil);
    STAssertTrue([ukNumber isEqual:[phoneUtil parse:@"+44 2034567890 X 456", @"GB"], nil);
    STAssertTrue([ukNumber isEqual:[phoneUtil parse:@"+44 2034567890 X  456", @"GB"], nil);
    STAssertTrue([ukNumber isEqual:[phoneUtil parse:@"+44 2034567890 x 456  ", @"GB"], nil);
    STAssertTrue([ukNumber isEqual:[phoneUtil parse:@"+44 2034567890  X 456", @"GB"], nil);
    STAssertTrue([ukNumber isEqual:[phoneUtil parse:@"+44-2034567890;ext=456", @"GB"], nil);
    STAssertTrue([ukNumber isEqual:[phoneUtil parse:@"tel:2034567890;ext=456;phone-context=+44", @"ZZ"], nil);
    // Full-width extension, @"extn' only.
    STAssertTrue([ukNumber isEqual:[phoneUtil parse:@"+442034567890\uFF45\uFF58\uFF54\uFF4E456", @"GB"], nil);
    // 'xtn' only.
    STAssertTrue([ukNumber isEqual:[phoneUtil parse:@"+442034567890\uFF58\uFF54\uFF4E456", @"GB"], nil);
    // 'xt' only.
    STAssertTrue([ukNumber isEqual:[phoneUtil parse:@"+442034567890\uFF58\uFF54456", @"GB"], nil);
    
    
    id usWithExtension = [[NBPhoneNumber alloc] init];
    [usWithExtension setCountryCode:1];
    [usWithExtension setNationalNumber:8009013355];
    [usWithExtension setExtension:@"7246433"];
    STAssertTrue(usWithExtension isEqual:[phoneUtil parse:@"(800) 901-3355 x 7246433", @"US"], nil);
    STAssertTrue(usWithExtension isEqual:[phoneUtil parse:@"(800) 901-3355 , ext 7246433", @"US"], nil);
    STAssertTrue(usWithExtension isEqual:[phoneUtil parse:@"(800) 901-3355 ,extension 7246433", @"US"], nil);
    STAssertTrue(usWithExtension isEqual:[phoneUtil parse:@"(800) 901-3355 ,extensi\u00F3n 7246433", @"US"], nil);
    // Repeat with the small letter o with acute accent created by combining
    // characters.
    STAssertTrue(usWithExtension isEqual:[phoneUtil parse:@"(800) 901-3355 ,extensio\u0301n 7246433", @"US"], nil);
    STAssertTrue(usWithExtension isEqual:[phoneUtil parse:@"(800) 901-3355 , 7246433", @"US"], nil);
    STAssertTrue(usWithExtension isEqual:[phoneUtil parse:@"(800) 901-3355 ext: 7246433", @"US"], nil);
    
    // Test that if a number has two extensions specified, we ignore the second.
    
    id usWithTwoExtensionsNumber = [[NBPhoneNumber alloc] init];
    [usWithTwoExtensionsNumber setCountryCode:1];
    [usWithTwoExtensionsNumber setNationalNumber:2121231234];
    [usWithTwoExtensionsNumber setExtension:@"508"];
    STAssertTrue(usWithTwoExtensionsNumber isEqual:[phoneUtil parse:@"(212)123-1234 x508/x1234", @"US)], nil);
    STAssertTrue(usWithTwoExtensionsNumber isEqual:[phoneUtil parse:@"(212)123-1234 x508/ x1234", @"US)], nil);
    STAssertTrue(usWithTwoExtensionsNumber isEqual:[phoneUtil parse:@"(212)123-1234 x508\\x1234", @"US)], nil);
    
    // Test parsing numbers in the form (645) 123-1234-910# works, where the last
    // 3 digits before the # are an extension.
    [usWithExtension = [[NBPhoneNumber alloc] init];
    [usWithExtension setCountryCode:1];
    [usWithExtension setNationalNumber:6451231234];
    [usWithExtension setExtension:@"910"];
    STAssertTrue(usWithExtension isEqual:
                                      [phoneUtil parse:@"+1 (645) 123 1234-910#", @"US)], nil);
    // Retry with the same number in a slightly different format.
    STAssertTrue(usWithExtension isEqual:
                                      [phoneUtil parse:@"+1 (645) 123 1234 ext. 910#", @"US)], nil);

#pragma mark - testParseAndKeepRaw
    id CCS = PhoneNumber.CountryCodeSource;
    
    id alphaNumericNumber = [ALPHA_NUMERIC_NUMBER copy];
    [alphaNumericNumber setRawInput:@"800 six-flags"];
    [alphaNumericNumber setCountryCodeSource:FROM_DEFAULT_COUNTRY];
    [alphaNumericNumber setPreferredDomesticCarrierCode(@""];
    STAssertTrue(alphaNumericNumber isEqual:
                                         [phoneUtil parseAndKeepRawInput:@"800 six-flags", @"US)], nil);
    
    
    id shorterAlphaNumber = [[NBPhoneNumber alloc] init];
    shorterAlphaNumber setCountryCode:1];
    shorterAlphaNumber setNationalNumber:8007493524];
    shorterAlphaNumber setRawInput:@"1800 six-flag"];
    shorterAlphaNumber setCountryCodeSource:FROM_NUMBER_WITHOUT_PLUS_SIGN];
    shorterAlphaNumber setPreferredDomesticCarrierCode(@""];
    STAssertTrue(shorterAlphaNumber isEqual:
                                         [phoneUtil parseAndKeepRawInput:@"1800 six-flag", @"US)], nil);
    
    shorterAlphaNumber setRawInput:@"+1800 six-flag"];
    shorterAlphaNumber setCountryCodeSource:FROM_NUMBER_WITH_PLUS_SIGN];
    STAssertTrue(shorterAlphaNumber isEqual:
                                         [phoneUtil parseAndKeepRawInput:@"+1800 six-flag", @"NZ)], nil);
    
    [alphaNumericNumber setCountryCode:1];
    [alphaNumericNumber setNationalNumber:8007493524];
    [alphaNumericNumber setRawInput:@"001800 six-flag"];
    [alphaNumericNumber setCountryCodeSource:FROM_NUMBER_WITH_IDD];
    STAssertTrue(alphaNumericNumber isEqual:[phoneUtil parseAndKeepRawInput:@"001800 six-flag", @"NZ)], nil);
    
    // Invalid region code supplied.
    @try
    {
        [phoneUtil parseAndKeepRawInput:@"123 456 7890", @"CS];
        fail(@"Deprecated region code not allowed: should fail."];
    } @catch (NSException *e)
    {
        // Expected this exception.
        STAssertEqualObjects(@"Wrong error type stored in exception.",
                     Error.INVALID_COUNTRY_CODE,
                     e];
    }
    
    
    id koreanNumber = [[NBPhoneNumber alloc] init];
    [koreanNumber setCountryCode:82];
    [koreanNumber setNationalNumber:22123456];
    [koreanNumber setRawInput:@"08122123456"];
    [koreanNumber setCountryCodeSource:FROM_DEFAULT_COUNTRY];
    [koreanNumber setPreferredDomesticCarrierCode(@"81"];
    STAssertTrue(koreanNumber isEqual:[phoneUtil parseAndKeepRawInput:@"08122123456", @"KR)], nil);

#pragma mark - testCountryWithNoNumberDesc

    numberTest = 0;
    // Andorra is a country where we don't have PhoneNumberDesc info in the
    // metadata.
    
    id adNumber = [[NBPhoneNumber alloc] init];
    adNumber setCountryCode:376];
    adNumber setNationalNumber:12345];
    STAssertEqualObjects(@"+376 12345", [phoneUtil format:adNumber, INTERNATIONAL], nil);
    STAssertEqualObjects(@"+37612345", [phoneUtil format:adNumber, E164], nil);
    STAssertEqualObjects(@"12345", [phoneUtil format:adNumber, NATIONAL], nil);
    STAssertEqualObjects(UNKNOWN, [phoneUtil getNumberType:adNumber], nil);
    STAssertTrue([phoneUtil isValidNumber:adNumber], nil);
    
    // Test dialing a US number from within Andorra.
    STAssertEqualObjects(@"00 1 650 253 0000", [phoneUtil formatOutOfCountryCallingNumber:US_NUMBER, @"AD"], nil);

#pragma mark - testUnknownCountryCallingCode

    STAssertFalse([phoneUtil isValidNumber:UNKNOWN_COUNTRY_CODE_NO_RAW_INPUT], nil);
    // It's not very well defined as to what the E164 representation for a number
    // with an invalid country calling code is, but just prefixing the country
    // code and national number is about the best we can do.
    STAssertEqualObjects(@"+212345",
                 [phoneUtil format:UNKNOWN_COUNTRY_CODE_NO_RAW_INPUT, E164], nil);

#pragma mark - testIsNumberMatchMatches
    // Test simple matches where formatting is different, or leading zeroes,
    // or country calling code has been specified.
    
    id num1 = [phoneUtil parse:@"+64 3 331 6005", @"NZ];
    
    id num2 = [phoneUtil parse:@"+64 03 331 6005", @"NZ];
    STAssertEqualObjects([EXACT_MATCH,
                 [phoneUtil isNumberMatch:num1, num2], nil);
    STAssertEqualObjects([EXACT_MATCH,
                 [phoneUtil isNumberMatch:@"+64 3 331 6005", @"+64 03 331 6005"], nil);
    STAssertEqualObjects([EXACT_MATCH,
                 [phoneUtil isNumberMatch:@"+800 1234 5678", @"+80012345678"], nil);
    STAssertEqualObjects([EXACT_MATCH,
                 [phoneUtil isNumberMatch:@"+64 03 331-6005", @"+64 03331 6005"], nil);
    STAssertEqualObjects([EXACT_MATCH,
                 [phoneUtil isNumberMatch:@"+643 331-6005", @"+64033316005"], nil);
    STAssertEqualObjects([EXACT_MATCH,
                 [phoneUtil isNumberMatch:@"+643 331-6005", @"+6433316005"], nil);
    STAssertEqualObjects([EXACT_MATCH,
                 [phoneUtil isNumberMatch:@"+64 3 331-6005", @"+6433316005"], nil);
    STAssertEqualObjects([EXACT_MATCH,
                 [phoneUtil isNumberMatch:@"+64 3 331-6005", @"tel:+64-3-331-6005;isub=123"], nil);
    // Test alpha numbers.
    STAssertEqualObjects([EXACT_MATCH,
                 [phoneUtil isNumberMatch:@"+1800 siX-Flags", @"+1 800 7493 5247"], nil);
    // Test numbers with extensions.
    STAssertEqualObjects([EXACT_MATCH,
                 [phoneUtil isNumberMatch:@"+64 3 331-6005 extn 1234", @"+6433316005#1234"], nil);
    // Test proto buffers.
    STAssertEqualObjects([EXACT_MATCH,
                 [phoneUtil isNumberMatch:NZ_NUMBER, @"+6403 331 6005"], nil);
    
    
    id nzNumber = [NZ_NUMBER copy];
    nzNumber setExtension:@"3456"];
    STAssertEqualObjects([EXACT_MATCH,
                 [phoneUtil isNumberMatch:nzNumber, @"+643 331 6005 ext 3456"], nil);
    // Check empty extensions are ignored.
    nzNumber setExtension:@""];
    STAssertEqualObjects([EXACT_MATCH,
                 [phoneUtil isNumberMatch:nzNumber, @"+6403 331 6005"], nil);
    // Check variant with two proto buffers.
    STAssertEqualObjects(@"Numbers did not match",
                 [EXACT_MATCH,
                 [phoneUtil isNumberMatch:nzNumber, NZ_NUMBER], nil);
    
    id CCS = PhoneNumber.CountryCodeSource;
    // Check raw_input, country_code_source and preferred_domestic_carrier_code
    // are ignored.
    
    id brNumberOne = [[NBPhoneNumber alloc] init];
    
    id brNumberTwo = [[NBPhoneNumber alloc] init];
    [brNumberOne setCountryCode:55];
    [brNumberOne setNationalNumber:3121286979];
    [brNumberOne setCountryCodeSource:FROM_NUMBER_WITH_PLUS_SIGN];
    [brNumberOne setPreferredDomesticCarrierCode(@"12"];
    [brNumberOne setRawInput:@"012 3121286979"];
    [brNumberTwo setCountryCode:55];
    [brNumberTwo setNationalNumber:3121286979];
    [brNumberTwo setCountryCodeSource:FROM_DEFAULT_COUNTRY];
    [brNumberTwo setPreferredDomesticCarrierCode(@"14"];
    [brNumberTwo setRawInput:@"143121286979"];
    STAssertEqualObjects([EXACT_MATCH, [phoneUtil isNumberMatch:brNumberOne, brNumberTwo], nil);

#pragma mark - testIsNumberMatchNonMatches
    // Non-matches.
    STAssertEqualObjects([NO_MATCH, [phoneUtil isNumberMatch:@"03 331 6005", @"03 331 6006"], nil);
    STAssertEqualObjects([NO_MATCH, [phoneUtil isNumberMatch:@"+800 1234 5678", @"+1 800 1234 5678"], nil);
    // Different country calling code, partial number match.
    STAssertEqualObjects([NO_MATCH, [phoneUtil isNumberMatch:@"+64 3 331-6005", @"+16433316005"], nil);
    // Different country calling code, same number.
    STAssertEqualObjects([NO_MATCH, [phoneUtil isNumberMatch:@"+64 3 331-6005", @"+6133316005"], nil);
    // Extension different, all else the same.
    STAssertEqualObjects([NO_MATCH, [phoneUtil isNumberMatch:@"+64 3 331-6005 extn 1234", @"0116433316005#1235"], nil);
    STAssertEqualObjects([NO_MATCH, [phoneUtil isNumberMatch:@"+64 3 331-6005 extn 1234", @"tel:+64-3-331-6005;ext=1235"], nil);
    // NSN matches, but extension is different - not the same number.
    STAssertEqualObjects([NO_MATCH, [phoneUtil isNumberMatch:@"+64 3 331-6005 ext.1235", @"3 331 6005#1234"], nil);
    
    // Invalid numbers that can't be parsed.
    STAssertEqualObjects([NOT_A_NUMBER, [phoneUtil isNumberMatch:@"4", @"3 331 6043"], nil);
    STAssertEqualObjects([NOT_A_NUMBER, [phoneUtil isNumberMatch:@"+43", @"+64 3 331 6005"], nil);
    STAssertEqualObjects([NOT_A_NUMBER, [phoneUtil isNumberMatch:@"+43", @"64 3 331 6005"], nil);
    STAssertEqualObjects([NOT_A_NUMBER, [phoneUtil isNumberMatch:@"Dog", @"64 3 331 6005"], nil);

#pragma mark - testIsNumberMatchNsnMatches
    // NSN matches.
    STAssertEqualObjects([NSN_MATCH], [phoneUtil isNumberMatch:@"+64 3 331-6005", @"03 331 6005"], nil);
    STAssertEqualObjects([NSN_MATCH], [phoneUtil isNumberMatch:@"+64 3 331-6005", @"tel:03-331-6005;isub=1234;phone-context=abc.nz"], nil);
    STAssertEqualObjects([NSN_MATCH], [phoneUtil isNumberMatch:NZ_NUMBER, @"03 331 6005"], nil);
    // Here the second number possibly starts with the country calling code for
    // New Zealand, although we are unsure.
    
    id unchangedNzNumber = [NZ_NUMBER copy];
    STAssertEqualObjects([NSN_MATCH], [phoneUtil isNumberMatch:unchangedNzNumber, @"(64-3) 331 6005"], nil);
    // Check the phone number proto was not edited during the method call.
    STAssertTrue(NZ_NUMBER isEqual:unchangedNzNumber], nil);
    
    // Here, the 1 might be a national prefix, if we compare it to the US number,
    // so the resultant match is an NSN match.
    STAssertEqualObjects([NSN_MATCH], [phoneUtil isNumberMatch:US_NUMBER, @"1-650-253-0000"], nil);
    STAssertEqualObjects([NSN_MATCH], [phoneUtil isNumberMatch:US_NUMBER, @"6502530000"], nil);
    STAssertEqualObjects([NSN_MATCH], [phoneUtil isNumberMatch:@"+1 650-253 0000", @"1 650 253 0000"], nil);
    STAssertEqualObjects([NSN_MATCH], [phoneUtil isNumberMatch:@"1 650-253 0000", @"1 650 253 0000"], nil);
    STAssertEqualObjects([NSN_MATCH], [phoneUtil isNumberMatch:@"1 650-253 0000", @"+1 650 253 0000"], nil);
    // For this case, the match will be a short NSN match, because we cannot
    // assume that the 1 might be a national prefix, so don't remove it when
    // parsing.
    
    id randomNumber = [[NBPhoneNumber alloc] init];
    [randomNumber setCountryCode:41];
    [randomNumber setNationalNumber:6502530000];
    STAssertEqualObjects([SHORT_NSN_MATCH], [phoneUtil isNumberMatch:randomNumber, @"1-650-253-0000"], nil);

#pragma mark - testIsNumberMatchShortNsnMatches
    // Short NSN matches with the country not specified for either one or both
    // numbers.
    STAssertEqualObjects([SHORT_NSN_MATCH], [phoneUtil isNumberMatch:@"+64 3 331-6005", @"331 6005"], nil);
    STAssertEqualObjects([SHORT_NSN_MATCH], [phoneUtil isNumberMatch:@"+64 3 331-6005", @"tel:331-6005;phone-context=abc.nz"], nil);
    STAssertEqualObjects([SHORT_NSN_MATCH], [phoneUtil isNumberMatch:@"+64 3 331-6005", @"tel:331-6005;isub=1234;phone-context=abc.nz"], nil);
    STAssertEqualObjects([SHORT_NSN_MATCH], [phoneUtil isNumberMatch:@"+64 3 331-6005", @"tel:331-6005;isub=1234;phone-context=abc.nz;a=%A1"], nil);
    // We did not know that the '0' was a national prefix since neither number has
    // a country code, so this is considered a SHORT_NSN_MATCH.
    STAssertEqualObjects([SHORT_NSN_MATCH], [phoneUtil isNumberMatch:@"3 331-6005", @"03 331 6005"], nil);
    STAssertEqualObjects([SHORT_NSN_MATCH], [phoneUtil isNumberMatch:@"3 331-6005", @"331 6005"], nil);
    STAssertEqualObjects([SHORT_NSN_MATCH], [phoneUtil isNumberMatch:@"3 331-6005", @"tel:331-6005;phone-context=abc.nz"], nil);
    STAssertEqualObjects([SHORT_NSN_MATCH], [phoneUtil isNumberMatch:@"3 331-6005", @"+64 331 6005"], nil);
    // Short NSN match with the country specified.
    STAssertEqualObjects([SHORT_NSN_MATCH], [phoneUtil isNumberMatch:@"03 331-6005", @"331 6005"], nil);
    STAssertEqualObjects([SHORT_NSN_MATCH], [phoneUtil isNumberMatch:@"1 234 345 6789", @"345 6789"], nil);
    STAssertEqualObjects([SHORT_NSN_MATCH], [phoneUtil isNumberMatch:@"+1 (234) 345 6789", @"345 6789"], nil);
    // NSN matches, country calling code omitted for one number, extension missing
    // for one.
    STAssertEqualObjects([SHORT_NSN_MATCH], [phoneUtil isNumberMatch:@"+64 3 331-6005", @"3 331 6005#1234"], nil);
    // One has Italian leading zero, one does not.
    
    id italianNumberOne = [[NBPhoneNumber alloc] init];
    [italianNumberOne setCountryCode:39];
    [italianNumberOne setNationalNumber:1234];
    [italianNumberOne setItalianLeadingZero(true];
    
    id italianNumberTwo = [[NBPhoneNumber alloc] init];
    [italianNumberTwo setCountryCode:39];
    [italianNumberTwo setNationalNumber:1234];
    STAssertEqualObjects([SHORT_NSN_MATCH], [phoneUtil isNumberMatch:italianNumberOne second:italianNumberTwo], nil);
    // One has an extension, the other has an extension of ''.
    [italianNumberOne setExtension:@"1234"];
    [italianNumberOne.clearItalianLeadingZero];
    [italianNumberTwo setExtension:@""];
    STAssertEqualObjects([SHORT_NSN_MATCH], [phoneUtil isNumberMatch:italianNumberOne second:italianNumberTwo], nil);
    */
    
#pragma mark - testCanBeInternationallyDialled
    // We have no-international-dialling rules for the US in our test metadata
    // that say that toll-free numbers cannot be dialled internationally.
    STAssertFalse([phoneUtil canBeInternationallyDialled:US_TOLLFREE], nil);
    
    // Normal US numbers can be internationally dialled.
    STAssertTrue([phoneUtil canBeInternationallyDialled:US_NUMBER], nil);
    
    // Invalid number.
    STAssertTrue([phoneUtil canBeInternationallyDialled:US_LOCAL_NUMBER], nil);
    
    // We have no data for NZ - should return true.
    STAssertTrue([phoneUtil canBeInternationallyDialled:NZ_NUMBER], nil);
    STAssertTrue([phoneUtil canBeInternationallyDialled:INTERNATIONAL_TOLL_FREE], nil);

    
#pragma mark - testIsAlphaNumber
    STAssertTrue([phoneUtil isAlphaNumber:@"1800 six-flags"], nil);
    STAssertTrue([phoneUtil isAlphaNumber:@"1800 six-flags ext. 1234"], nil);
    STAssertTrue([phoneUtil isAlphaNumber:@"+800 six-flags"], nil);
    STAssertTrue([phoneUtil isAlphaNumber:@"180 six-flags"], nil);
    STAssertFalse([phoneUtil isAlphaNumber:@"1800 123-1234"], nil);
    STAssertFalse([phoneUtil isAlphaNumber:@"1 six-flags"], nil);
    STAssertFalse([phoneUtil isAlphaNumber:@"18 six-flags"], nil);
    STAssertFalse([phoneUtil isAlphaNumber:@"1800 123-1234 extension: 1234"], nil);
    STAssertFalse([phoneUtil isAlphaNumber:@"+800 1234-1234"], nil);
}
@end
