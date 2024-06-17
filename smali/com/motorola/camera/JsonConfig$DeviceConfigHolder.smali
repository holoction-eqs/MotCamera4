.class public final Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final m3ATimeoutFrames:I

.field public final mAnalogGainThreshold:F

.field public final mBarcodeDetectionBackoff:Z

.field public final mBarcodeDetectionEnabled:[Z

.field public final mBarcodeTimeBetweenScans:[I

.field public final mCameraMappings:[Lcom/motorola/camera/JsonConfig$CameraMapping;

.field public final mCameraTypes:[Lcom/motorola/camera/settings/CameraType;

.field public final mDepthDualConfigInputBufferCnt:[I

.field public final mDepthDualConfigOutputBufferCnt:[I

.field public final mDepthSystemCalibrationDevices:[Lcom/motorola/camera/settings/CameraType;

.field public final mDisableAppZslScenes:Ljava/util/HashSet;

.field public final mDisableHalZslModes:Ljava/util/HashSet;

.field public final mDisplayCutoutConfigs:[F

.field public final mDisplayCutoutsCoordinates:Lorg/json/JSONArray;

.field public final mDualCalibrationDataVendor:Ljava/lang/String;

.field public final mDualConfigInputBufferCnt:[I

.field public final mDualConfigMaxJobCnt:[I

.field public final mDualConfigOutputBufferCnt:[I

.field public final mDualDepthConfigMaxJobCnt:[I

.field public final mEarlyReprocScenes:Ljava/util/HashSet;

.field public final mEngineMfnrEstimate:J

.field public final mExtraFreeMemSizeMb:[I

.field public final mExtraRawStreamModes:Ljava/util/HashSet;

.field public final mFallBackISOThreshold:[F

.field public final mFallBackScenes:Ljava/util/HashSet;

.field public final mFastCaptureUITimeoutMap:Ljava/util/Map;

.field public final mFlashAlpha:F

.field public final mFlashAwbSpeed:F

.field public final mFlashCctTable:Ljava/lang/String;

.field public final mFlashColor:Ljava/lang/String;

.field public final mFlashLuxRange:[F

.field public final mFlashTorchEnable:Z

.field public final mFocusTimeoutDurationFlash:I

.field public final mFullFrameSkipPatternCnt:[I

.field public final mGainOnlyQcfaDecision:Z

.field public final mGestureRemoveDelay:Z

.field public final mGrallocUsageFlags:[Ljava/lang/String;

.field public final mHighResSnapShotMinInterval:Ljava/util/Map;

.field public final mInSensorCropScenes:Ljava/util/HashSet;

.field public final mInSensorCropZoomThreshold:D

.field public final mLowMemKillSizeMb:[I

.field public final mMaxConcurrentJobsBySceneMap:Ljava/util/Map;

.field public final mMaxFallBackCount:I

.field public final mMaxJobCntMap:Ljava/util/Map;

.field public final mMaxJobSlipMap:Ljava/util/Map;

.field public final mMaxMultishotRates:[F

.field public final mMaxMultishotRatesLvl1:[F

.field public final mMcfSlowCaptureModes:Ljava/util/HashSet;

.field public final mMeiSheAnimatedStickerConfigs:Ljava/util/Map;

.field public final mMeiSheVideoFxConfigs:Ljava/util/Map;

.field public final mMotoFlashTuningEnable:[Z

.field public final mNonSingleSessionRemosaicEstimate:J

.field public final mNormalConfigInputBufferCnt:[I

.field public final mNormalConfigOutputBufferCnt:[I

.field public final mOfflineReprocEnabled:[Z

.field public final mPanoDistortions:[D

.field public final mPanoExpAdj:F

.field public final mPanoMaxGain:F

.field public final mPanoNoiseReductionLevel:I

.field public final mPanoRotationRatio:D

.field public final mPhysicalCameraCount:I

.field public final mPortraitLens:Z

.field public final mPortraitLensBlurLevel:[I

.field public final mPortraitLensCameraType:[Lcom/motorola/camera/settings/CameraType;

.field public final mPortraitLensZoomValue:[F

.field public final mPreviewRateDepthLimit:[I

.field public final mPreviewRateLimitDefault:[I

.field public final mPreviewRateLimitLvl1:[I

.field public final mPreviewRateLimitLvl2:[I

.field public final mQcfaFastCaptureUITimeout:J

.field public final mQuickCaptureVibrationConfigs:[I

.field public final mRawHdrModes:Ljava/util/HashSet;

.field public final mSceneDetectionPlatform:Ljava/lang/String;

.field public final mSetRepeatingSendErrorDelay:I

.field public final mSingleConfigMaxJobCnt:[I

.field public final mSingleConfigNormalOverrideJobCnt:[I

.field public final mSingleConfigSpecialOverrideJobCnt:[I

.field public final mSingleSessionRemosaicEstimate:[J

.field public final mSingleSlipConfigMaxJobCnt:[I

.field public final mSkinToneCountryMapping:Ljava/util/Map;

.field public final mSkinToneDetectionEnabled:Z

.field public final mSkinToneSkuMapping:Ljava/util/Map;

.field public final mSlideScanConfigs:[F

.field public final mSnapShotMinInterval:Ljava/util/Map;

.field public final mStarTrailsLib:Ljava/lang/String;

.field public final mSuperRemosaicTriggers:[F

.field public final mSuperSlowMotionLib:Ljava/lang/String;

.field public final mSuperSlowMotionLowLightThreshold:I

.field public final mThumbnailJpegQuality:I

.field public final mToHighResRgThreshold:F

.field public final mToNormalResRgThreshold:F

.field public final mTorchControlEnable:[Z

.field public final mUltraResReminderRgThreshold:F

.field public final mUseAppShutterControl:Z

.field public final mUseCustomNoiseReduction:[Z

.field public final mUseHQPreview:[Z

.field public final mUseHighResolutionOutput:[Z

.field public final mVideoPortraitConfigs:Ljava/util/Map;

.field public final mZoomBlendingManualX:[F

.field public final mZoomBlendingSegments:[F

.field public final mZoomModeSwitchGains:[F

.field public final mZoomOverride:Ljava/util/List;

.field public final mZslDepthDualConfigInputBufferCnt:[I

.field public final mZslDepthDualConfigOutputBufferCnt:[I


# direct methods
.method public constructor <init>([I[I[I[I[I[I[I[I[Ljava/lang/String;[I[I[I[I[I[I[ILjava/util/List;IIIZFFFF[JJJ[I[I[I[I[F[F[I[I[F[FLjava/util/Map;Ljava/util/Map;Z[ZLjava/lang/String;FZ[FLjava/lang/String;F[ZLjava/lang/String;ZLjava/util/Map;Ljava/util/Map;[Z[Z[Z[F[Lcom/motorola/camera/settings/CameraType;[Lcom/motorola/camera/settings/CameraType;[Lcom/motorola/camera/JsonConfig$CameraMapping;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;[DFFIDLorg/json/JSONArray;I[F[I[ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;[Z[IZJZILjava/lang/String;Ljava/lang/String;[FZ[Lcom/motorola/camera/settings/CameraType;[F[ILjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;[FLjava/lang/String;DLjava/util/HashSet;IILjava/util/HashSet;Ljava/util/HashSet;[F)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mNormalConfigInputBufferCnt:[I

    move-object v1, p2

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mNormalConfigOutputBufferCnt:[I

    move-object v1, p3

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDualConfigInputBufferCnt:[I

    move-object v1, p4

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDualConfigOutputBufferCnt:[I

    move-object v1, p5

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDepthDualConfigInputBufferCnt:[I

    move-object v1, p6

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDepthDualConfigOutputBufferCnt:[I

    move-object v1, p7

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZslDepthDualConfigInputBufferCnt:[I

    move-object v1, p8

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZslDepthDualConfigOutputBufferCnt:[I

    move-object v1, p9

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mGrallocUsageFlags:[Ljava/lang/String;

    move-object v1, p10

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFullFrameSkipPatternCnt:[I

    move-object v1, p11

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleConfigMaxJobCnt:[I

    move-object v1, p12

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleConfigNormalOverrideJobCnt:[I

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleConfigSpecialOverrideJobCnt:[I

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleSlipConfigMaxJobCnt:[I

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDualConfigMaxJobCnt:[I

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDualDepthConfigMaxJobCnt:[I

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomOverride:Ljava/util/List;

    move/from16 v1, p18

    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->m3ATimeoutFrames:I

    move/from16 v1, p19

    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFocusTimeoutDurationFlash:I

    move/from16 v1, p20

    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSetRepeatingSendErrorDelay:I

    move/from16 v1, p21

    iput-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mGainOnlyQcfaDecision:Z

    move/from16 v1, p22

    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mAnalogGainThreshold:F

    move/from16 v1, p23

    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mToHighResRgThreshold:F

    move/from16 v1, p24

    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mToNormalResRgThreshold:F

    move/from16 v1, p25

    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mUltraResReminderRgThreshold:F

    move-object/from16 v1, p26

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleSessionRemosaicEstimate:[J

    move-wide/from16 v1, p27

    iput-wide v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mNonSingleSessionRemosaicEstimate:J

    move-wide/from16 v1, p29

    iput-wide v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mQcfaFastCaptureUITimeout:J

    move-object/from16 v1, p31

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPreviewRateLimitDefault:[I

    move-object/from16 v1, p32

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPreviewRateLimitLvl1:[I

    move-object/from16 v1, p33

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPreviewRateLimitLvl2:[I

    move-object/from16 v1, p34

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPreviewRateDepthLimit:[I

    move-object/from16 v1, p35

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxMultishotRates:[F

    move-object/from16 v1, p36

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxMultishotRatesLvl1:[F

    move-object/from16 v1, p37

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mLowMemKillSizeMb:[I

    move-object/from16 v1, p38

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mExtraFreeMemSizeMb:[I

    move-object/from16 v1, p39

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    move-object/from16 v1, p40

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingManualX:[F

    move-object/from16 v1, p41

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSnapShotMinInterval:Ljava/util/Map;

    move-object/from16 v1, p42

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mHighResSnapShotMinInterval:Ljava/util/Map;

    move/from16 v1, p43

    iput-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mUseAppShutterControl:Z

    move-object/from16 v1, p44

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mUseHighResolutionOutput:[Z

    move-object/from16 v1, p45

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashColor:Ljava/lang/String;

    move/from16 v1, p46

    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashAlpha:F

    move/from16 v1, p47

    iput-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashTorchEnable:Z

    move-object/from16 v1, p48

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashLuxRange:[F

    move-object/from16 v1, p49

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashCctTable:Ljava/lang/String;

    move/from16 v1, p50

    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashAwbSpeed:F

    move-object/from16 v1, p51

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mUseHQPreview:[Z

    move-object/from16 v1, p52

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSceneDetectionPlatform:Ljava/lang/String;

    move/from16 v1, p53

    iput-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSkinToneDetectionEnabled:Z

    move-object/from16 v1, p54

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSkinToneCountryMapping:Ljava/util/Map;

    move-object/from16 v1, p55

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSkinToneSkuMapping:Ljava/util/Map;

    move-object/from16 v1, p56

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMotoFlashTuningEnable:[Z

    move-object/from16 v1, p57

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mUseCustomNoiseReduction:[Z

    move-object/from16 v1, p58

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mOfflineReprocEnabled:[Z

    move-object/from16 v1, p59

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSuperRemosaicTriggers:[F

    move-object/from16 v1, p60

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDepthSystemCalibrationDevices:[Lcom/motorola/camera/settings/CameraType;

    move-object/from16 v1, p61

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mCameraTypes:[Lcom/motorola/camera/settings/CameraType;

    move-object/from16 v1, p62

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mCameraMappings:[Lcom/motorola/camera/JsonConfig$CameraMapping;

    move-object/from16 v1, p63

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDisableAppZslScenes:Ljava/util/HashSet;

    move-object/from16 v1, p64

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDisableHalZslModes:Ljava/util/HashSet;

    move-object/from16 v1, p65

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mExtraRawStreamModes:Ljava/util/HashSet;

    move-object/from16 v1, p66

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mEarlyReprocScenes:Ljava/util/HashSet;

    move-object/from16 v1, p67

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMcfSlowCaptureModes:Ljava/util/HashSet;

    move-object/from16 v1, p68

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPanoDistortions:[D

    move/from16 v1, p69

    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPanoExpAdj:F

    move/from16 v1, p70

    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPanoMaxGain:F

    move/from16 v1, p71

    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPanoNoiseReductionLevel:I

    move-wide/from16 v1, p72

    iput-wide v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPanoRotationRatio:D

    move-object/from16 v1, p74

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDisplayCutoutsCoordinates:Lorg/json/JSONArray;

    move/from16 v1, p75

    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPhysicalCameraCount:I

    move-object/from16 v1, p76

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDisplayCutoutConfigs:[F

    move-object/from16 v1, p77

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mQuickCaptureVibrationConfigs:[I

    move-object/from16 v1, p78

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mTorchControlEnable:[Z

    move-object/from16 v1, p79

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxJobCntMap:Ljava/util/Map;

    move-object/from16 v1, p80

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxConcurrentJobsBySceneMap:Ljava/util/Map;

    move-object/from16 v1, p81

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxJobSlipMap:Ljava/util/Map;

    move-object/from16 v1, p82

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mBarcodeDetectionEnabled:[Z

    move-object/from16 v1, p83

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mBarcodeTimeBetweenScans:[I

    move/from16 v1, p84

    iput-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mBarcodeDetectionBackoff:Z

    move-wide/from16 v1, p85

    iput-wide v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mEngineMfnrEstimate:J

    move/from16 v1, p87

    iput-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mGestureRemoveDelay:Z

    move/from16 v1, p88

    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSuperSlowMotionLowLightThreshold:I

    move-object/from16 v1, p89

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSuperSlowMotionLib:Ljava/lang/String;

    move-object/from16 v1, p90

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mStarTrailsLib:Ljava/lang/String;

    move-object/from16 v1, p91

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSlideScanConfigs:[F

    move/from16 v1, p92

    iput-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPortraitLens:Z

    move-object/from16 v1, p93

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPortraitLensCameraType:[Lcom/motorola/camera/settings/CameraType;

    move-object/from16 v1, p94

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPortraitLensZoomValue:[F

    move-object/from16 v1, p95

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPortraitLensBlurLevel:[I

    move-object/from16 v1, p96

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFastCaptureUITimeoutMap:Ljava/util/Map;

    move-object/from16 v1, p97

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mVideoPortraitConfigs:Ljava/util/Map;

    move-object/from16 v1, p98

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMeiSheVideoFxConfigs:Ljava/util/Map;

    move-object/from16 v1, p99

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMeiSheAnimatedStickerConfigs:Ljava/util/Map;

    move-object/from16 v1, p100

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomModeSwitchGains:[F

    move-object/from16 v1, p101

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDualCalibrationDataVendor:Ljava/lang/String;

    move-wide/from16 v1, p102

    iput-wide v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mInSensorCropZoomThreshold:D

    move-object/from16 v1, p104

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mInSensorCropScenes:Ljava/util/HashSet;

    move/from16 v1, p105

    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mThumbnailJpegQuality:I

    move/from16 v1, p106

    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxFallBackCount:I

    move-object/from16 v1, p107

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFallBackScenes:Ljava/util/HashSet;

    move-object/from16 v1, p108

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mRawHdrModes:Ljava/util/HashSet;

    move-object/from16 v1, p109

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFallBackISOThreshold:[F

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DeviceConfigHolder{mNormalConfigInputBufferCnt="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mNormalConfigInputBufferCnt:[I

    const-string v2, ", mNormalConfigOutputBufferCnt="

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mNormalConfigOutputBufferCnt:[I

    const-string v2, ", mDualConfigInputBufferCnt="

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDualConfigInputBufferCnt:[I

    const-string v2, ", mDualConfigOutputBufferCnt="

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDualConfigOutputBufferCnt:[I

    const-string v2, ", mDepthDualConfigInputBufferCnt="

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDepthDualConfigInputBufferCnt:[I

    const-string v2, ", mDepthDualConfigOutputBufferCnt="

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDepthDualConfigOutputBufferCnt:[I

    const-string v2, ", mZslDepthDualConfigInputBufferCnt="

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZslDepthDualConfigInputBufferCnt:[I

    const-string v2, ", mZslDepthDualConfigOutputBufferCnt="

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZslDepthDualConfigOutputBufferCnt:[I

    const-string v2, ", mSingeConfigMaxJobCnt="

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleConfigMaxJobCnt:[I

    const-string v2, ", mDualConfigMaxJobCnt="

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDualConfigMaxJobCnt:[I

    const-string v2, ", mSingleConfigNormalOverrideJobCnt="

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleConfigNormalOverrideJobCnt:[I

    const-string v2, ", mSingleConfigSpecialOverrideJobCnt="

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleConfigSpecialOverrideJobCnt:[I

    const-string v2, ", mSingleSlipConfigMaxJobCnt="

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleSlipConfigMaxJobCnt:[I

    const-string v2, ", mDualDepthConfigMaxJobCnt="

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDualDepthConfigMaxJobCnt:[I

    const-string v2, ", m3ATimeoutFrames="

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->m3ATimeoutFrames:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mFocusTimeoutDurationFlash="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFocusTimeoutDurationFlash:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mGainOnlyQcfaDecision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mGainOnlyQcfaDecision:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAnalogGainThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mAnalogGainThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mToHighResRgThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mToHighResRgThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mToNormalResRgThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mToNormalResRgThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mToUltraResReminderRgThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mUltraResReminderRgThreshold:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mSingleSessionRemosaicEstimate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSingleSessionRemosaicEstimate:[J

    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mNonSingleSessionRemosaicEstimate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mNonSingleSessionRemosaicEstimate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mQcfaFastCaptureUITimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mQcfaFastCaptureUITimeout:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mPreviewRateLimitDefault"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPreviewRateLimitDefault:[I

    const-string v2, ", mPreviewRateLimitLvl1"

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPreviewRateLimitLvl1:[I

    const-string v2, ", mPreviewRateLimitLvl2"

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPreviewRateLimitLvl2:[I

    const-string v2, ", mPreviewRateDepthLimit"

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPreviewRateDepthLimit:[I

    const-string v2, ", mMaxMultishotRates"

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxMultishotRates:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxMultishotRatesLvl1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMaxMultishotRatesLvl1:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mLowMemKillSizeMb"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mLowMemKillSizeMb:[I

    const-string v2, ", mExtraFreeMemSizeMb"

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mExtraFreeMemSizeMb:[I

    const-string v2, ", mZoomBlendingSegments"

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingSegments:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mZoomBlendingManualX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomBlendingManualX:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUseAppShutterControl="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mUseAppShutterControl:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFlashColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFlashAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mFlashTorchEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashTorchEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFlashLuxRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashLuxRange:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFlashCctTable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashCctTable:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mFlashAwbSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mFlashAwbSpeed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mSceneDetectionPlatform="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSceneDetectionPlatform:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSkinToneDetectionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSkinToneDetectionEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSkinToneCountryMapping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSkinToneCountryMapping:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mSkinToneSkuMapping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSkinToneSkuMapping:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mMotoFlashTuningEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMotoFlashTuningEnable:[Z

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUseCustomNoiseReduction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mUseCustomNoiseReduction:[Z

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mOfflineReprocEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mOfflineReprocEnabled:[Z

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSuperRemosaicTriggers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSuperRemosaicTriggers:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDepthSystemCalibrationDevices="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDepthSystemCalibrationDevices:[Lcom/motorola/camera/settings/CameraType;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraTypes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mCameraTypes:[Lcom/motorola/camera/settings/CameraType;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraMappings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mCameraMappings:[Lcom/motorola/camera/JsonConfig$CameraMapping;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDisableAppZslScenes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDisableAppZslScenes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDisableHalZslModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDisableHalZslModes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mExtraRawStreamModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mExtraRawStreamModes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mEarlyReprocScenes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mEarlyReprocScenes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mMcfSlowCaptureModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mMcfSlowCaptureModes:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPanoDistortions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPanoDistortions:[D

    invoke-static {v1}, Ljava/util/Arrays;->toString([D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPanoExpAdj="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPanoExpAdj:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mPanoMaxGain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPanoMaxGain:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", mPanoNoiseReductionLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPanoNoiseReductionLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mPanoRotationRatio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPanoRotationRatio:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayCutoutsCoordinates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDisplayCutoutsCoordinates:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDisplayCutoutConfigs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDisplayCutoutConfigs:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mQuickCaptureVibrationConfigs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mQuickCaptureVibrationConfigs:[I

    const-string v2, ", mTorchControlEnable="

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mTorchControlEnable:[Z

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mBarcodeDetectionEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mBarcodeDetectionEnabled:[Z

    invoke-static {v1}, Ljava/util/Arrays;->toString([Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mBarcodeTimeBetweenScans="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mBarcodeTimeBetweenScans:[I

    const-string v2, ", mEngineMfnrEstimate ="

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mEngineMfnrEstimate:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mGestureRemoveDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mGestureRemoveDelay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mSuperSlowMotionLowLightThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSuperSlowMotionLowLightThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mSuperSlowMotionLib="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSuperSlowMotionLib:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mStarTrailsLib="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mStarTrailsLib:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mSlideScanConfigs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mSlideScanConfigs:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPortraitLens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPortraitLens:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mPortraitLensCameraType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPortraitLensCameraType:[Lcom/motorola/camera/settings/CameraType;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPortraitLensZoomValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPortraitLensZoomValue:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mPortraitLensBlurLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mPortraitLensBlurLevel:[I

    const-string v2, ", mZoomModeSwitchGains="

    invoke-static {v1, v0, v2}, Landroidx/work/NetworkType$EnumUnboxingLocalUtility;->m([ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mZoomModeSwitchGains:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDualCalibrationDataVendor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mDualCalibrationDataVendor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mThumbnailJpegQuality="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mThumbnailJpegQuality:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mRawHdrModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mRawHdrModes:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/AbstractCollection;->toArray()[Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
