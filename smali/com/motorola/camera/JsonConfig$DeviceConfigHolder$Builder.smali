.class public final Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public m3ATimeoutFrames:I

.field public mAnalogGainThreshold:F

.field public mBarcodeDetectionBackoff:Z

.field public mBarcodeDetectionEnabled:[Z

.field public mBarcodeTimeBetweenScans:[I

.field public mCameraMappings:[Lcom/motorola/camera/JsonConfig$CameraMapping;

.field public mCameraTypes:[Lcom/motorola/camera/settings/CameraType;

.field public mDepthDualConfigInputBufferCnt:[I

.field public mDepthDualConfigOutputBufferCnt:[I

.field public mDepthSystemCalibrationDevices:[Lcom/motorola/camera/settings/CameraType;

.field public mDisableAppZslScenes:Ljava/util/HashSet;

.field public mDisableHalZslModes:Ljava/util/HashSet;

.field public mDisplayCutoutConfigs:[F

.field public mDisplayCutoutsCoordinate:Lorg/json/JSONArray;

.field public mDualCalibrationDataVendor:Ljava/lang/String;

.field public mDualConfigInputBufferCnt:[I

.field public mDualConfigMaxJobCnt:[I

.field public mDualConfigOutputBufferCnt:[I

.field public mDualDepthConfigMaxJobCnt:[I

.field public mEarlyReprocScenes:Ljava/util/HashSet;

.field public mEngineMfnrEstimate:J

.field public mExtraFreeMemSizeMb:[I

.field public mExtraRawStreamModes:Ljava/util/HashSet;

.field public mFallBackISOThreshold:[F

.field public mFallBackScenes:Ljava/util/HashSet;

.field public mFastCaptureUITimeoutMap:Ljava/util/Map;

.field public mFlashAlpha:F

.field public mFlashAwbSpeed:F

.field public mFlashCctTable:Ljava/lang/String;

.field public mFlashColor:Ljava/lang/String;

.field public mFlashLuxRange:[F

.field public mFlashTorchEnable:Z

.field public mFocusTimeoutDurationFlash:I

.field public mFullFrameConfigSkipPatternCnt:[I

.field public mGainOnlyQcfaDecision:Z

.field public mGestureRemoveDelay:Z

.field public mGrallocUsageFlags:[Ljava/lang/String;

.field public mHighResSnapShotMinInterval:Ljava/util/Map;

.field public mInSensorCropScenes:Ljava/util/HashSet;

.field public mInSensorCropZoomThreshold:D

.field public mLowMemKillSizeMb:[I

.field public mMaxConcurrentJobsMap:Ljava/util/Map;

.field public mMaxFallBackCount:I

.field public mMaxJobCountMap:Ljava/util/Map;

.field public mMaxJobSlipMap:Ljava/util/Map;

.field public mMaxMultishotRates:[F

.field public mMaxMultishotRatesLvl1:[F

.field public mMcfSlowCaptureModes:Ljava/util/HashSet;

.field public mMeiSheAnimatedStickerConfigs:Ljava/util/Map;

.field public mMeiSheVideoFxConfigs:Ljava/util/Map;

.field public mMotoFlashTuningEnable:[Z

.field public mNonSingleSessionRemosaicEstimate:J

.field public mNormalConfigInputBufferCnt:[I

.field public mNormalConfigOutputBufferCnt:[I

.field public mOfflineReprocEnabled:[Z

.field public mPanoDistortions:[D

.field public mPanoExpAdj:F

.field public mPanoMaxGain:F

.field public mPanoNoiseReductionLevel:I

.field public mPanoRotationRatio:D

.field public mPhysicalCameraCount:I

.field public mPortraitLens:Z

.field public mPortraitLensBlurLevel:[I

.field public mPortraitLensCameraType:[Lcom/motorola/camera/settings/CameraType;

.field public mPortraitLensZoomValue:[F

.field public mPreviewRateDepthLimit:[I

.field public mPreviewRateLimitDefault:[I

.field public mPreviewRateLimitLvl1:[I

.field public mPreviewRateLimitLvl2:[I

.field public mQcfaFastCaptureUITimeout:J

.field public mQuickCaptureVibrationConfigs:[I

.field public mRawHdrModes:Ljava/util/HashSet;

.field public mSceneDetectionPlatform:Ljava/lang/String;

.field public mSetRepeatingSendErrorDelay:I

.field public mSingleConfigMaxJobCnt:[I

.field public mSingleConfigNormalOverrideJobCnt:[I

.field public mSingleConfigSpecialOverrideJobCnt:[I

.field public mSingleSessionRemosaicEstimate:[J

.field public mSingleSlipConfigMaxJobCnt:[I

.field public mSkinToneCountryMapping:Ljava/util/Map;

.field public mSkinToneDetectionEnabled:Z

.field public mSkinToneSkuMapping:Ljava/util/Map;

.field public mSlideScanConfigs:[F

.field public mSnapshotMinInterval:Ljava/util/Map;

.field public mStarTrailsLib:Ljava/lang/String;

.field public mSuperRemosaicTriggers:[F

.field public mSuperSlowMotionLib:Ljava/lang/String;

.field public mSuperSlowMotionLowLightThreshold:I

.field public mThumbnailJpegQuality:I

.field public mToHighResRgThreshold:F

.field public mToNormalResRgThreshold:F

.field public mTorchControlEnable:[Z

.field public mUltraResReminderRgThreshold:F

.field public mUseAppShutterControl:Z

.field public mUseCustomNoiseReduction:[Z

.field public mUseHQPreview:[Z

.field public mUseHighResolutionOutput:[Z

.field public mVideoPortraitConfigs:Ljava/util/Map;

.field public mZoomBlendingManualX:[F

.field public mZoomBlendingSegments:[F

.field public mZoomModeSwitchGains:[F

.field public mZoomOverride:Ljava/util/List;

.field public mZslDepthDualConfigInputBufferCnt:[I

.field public mZslDepthDualConfigOutputBufferCnt:[I


# direct methods
.method public static -$$Nest$mbuild(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;)Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;
    .locals 114

    move-object/from16 v0, p0

    new-instance v111, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    move-object/from16 v1, v111

    iget-object v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mNormalConfigInputBufferCnt:[I

    iget-object v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mNormalConfigOutputBufferCnt:[I

    iget-object v4, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDualConfigInputBufferCnt:[I

    iget-object v5, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDualConfigOutputBufferCnt:[I

    iget-object v6, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDepthDualConfigInputBufferCnt:[I

    iget-object v7, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDepthDualConfigOutputBufferCnt:[I

    iget-object v8, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mZslDepthDualConfigInputBufferCnt:[I

    iget-object v9, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mZslDepthDualConfigOutputBufferCnt:[I

    iget-object v10, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mGrallocUsageFlags:[Ljava/lang/String;

    iget-object v11, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFullFrameConfigSkipPatternCnt:[I

    iget-object v12, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSingleConfigMaxJobCnt:[I

    iget-object v13, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSingleConfigNormalOverrideJobCnt:[I

    iget-object v14, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSingleConfigSpecialOverrideJobCnt:[I

    iget-object v15, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSingleSlipConfigMaxJobCnt:[I

    move-object/from16 v112, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDualConfigMaxJobCnt:[I

    move-object/from16 v16, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDualDepthConfigMaxJobCnt:[I

    move-object/from16 v17, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mZoomOverride:Ljava/util/List;

    move-object/from16 v18, v1

    iget v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->m3ATimeoutFrames:I

    move/from16 v19, v1

    iget v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFocusTimeoutDurationFlash:I

    move/from16 v20, v1

    iget v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSetRepeatingSendErrorDelay:I

    move/from16 v21, v1

    iget-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mGainOnlyQcfaDecision:Z

    move/from16 v22, v1

    iget v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mAnalogGainThreshold:F

    move/from16 v23, v1

    iget v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mToHighResRgThreshold:F

    move/from16 v24, v1

    iget v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mToNormalResRgThreshold:F

    move/from16 v25, v1

    iget v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mUltraResReminderRgThreshold:F

    move/from16 v26, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSingleSessionRemosaicEstimate:[J

    move-object/from16 v27, v1

    move-object/from16 v113, v2

    iget-wide v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mNonSingleSessionRemosaicEstimate:J

    move-wide/from16 v28, v1

    iget-wide v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mQcfaFastCaptureUITimeout:J

    move-wide/from16 v30, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPreviewRateLimitDefault:[I

    move-object/from16 v32, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPreviewRateLimitLvl1:[I

    move-object/from16 v33, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPreviewRateLimitLvl2:[I

    move-object/from16 v34, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPreviewRateDepthLimit:[I

    move-object/from16 v35, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMaxMultishotRates:[F

    move-object/from16 v36, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMaxMultishotRatesLvl1:[F

    move-object/from16 v37, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mLowMemKillSizeMb:[I

    move-object/from16 v38, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mExtraFreeMemSizeMb:[I

    move-object/from16 v39, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mZoomBlendingSegments:[F

    move-object/from16 v40, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mZoomBlendingManualX:[F

    move-object/from16 v41, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSnapshotMinInterval:Ljava/util/Map;

    move-object/from16 v42, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mHighResSnapShotMinInterval:Ljava/util/Map;

    move-object/from16 v43, v1

    iget-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mUseAppShutterControl:Z

    move/from16 v44, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mUseHighResolutionOutput:[Z

    move-object/from16 v45, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashColor:Ljava/lang/String;

    move-object/from16 v46, v1

    iget v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashAlpha:F

    move/from16 v47, v1

    iget-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashTorchEnable:Z

    move/from16 v48, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashLuxRange:[F

    move-object/from16 v49, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashCctTable:Ljava/lang/String;

    move-object/from16 v50, v1

    iget v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashAwbSpeed:F

    move/from16 v51, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mUseHQPreview:[Z

    move-object/from16 v52, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSceneDetectionPlatform:Ljava/lang/String;

    move-object/from16 v53, v1

    iget-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSkinToneDetectionEnabled:Z

    move/from16 v54, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSkinToneCountryMapping:Ljava/util/Map;

    move-object/from16 v55, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSkinToneSkuMapping:Ljava/util/Map;

    move-object/from16 v56, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMotoFlashTuningEnable:[Z

    move-object/from16 v57, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mUseCustomNoiseReduction:[Z

    move-object/from16 v58, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mOfflineReprocEnabled:[Z

    move-object/from16 v59, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSuperRemosaicTriggers:[F

    move-object/from16 v60, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDepthSystemCalibrationDevices:[Lcom/motorola/camera/settings/CameraType;

    move-object/from16 v61, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mCameraTypes:[Lcom/motorola/camera/settings/CameraType;

    move-object/from16 v62, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mCameraMappings:[Lcom/motorola/camera/JsonConfig$CameraMapping;

    move-object/from16 v63, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDisableAppZslScenes:Ljava/util/HashSet;

    move-object/from16 v64, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDisableHalZslModes:Ljava/util/HashSet;

    move-object/from16 v65, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mExtraRawStreamModes:Ljava/util/HashSet;

    move-object/from16 v66, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mEarlyReprocScenes:Ljava/util/HashSet;

    move-object/from16 v67, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMcfSlowCaptureModes:Ljava/util/HashSet;

    move-object/from16 v68, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPanoDistortions:[D

    move-object/from16 v69, v1

    iget v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPanoExpAdj:F

    move/from16 v70, v1

    iget v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPanoMaxGain:F

    move/from16 v71, v1

    iget v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPanoNoiseReductionLevel:I

    move/from16 v72, v1

    iget-wide v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPanoRotationRatio:D

    move-wide/from16 v73, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDisplayCutoutsCoordinate:Lorg/json/JSONArray;

    move-object/from16 v75, v1

    iget v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPhysicalCameraCount:I

    move/from16 v76, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDisplayCutoutConfigs:[F

    move-object/from16 v77, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mQuickCaptureVibrationConfigs:[I

    move-object/from16 v78, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mTorchControlEnable:[Z

    move-object/from16 v79, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMaxJobCountMap:Ljava/util/Map;

    move-object/from16 v80, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMaxConcurrentJobsMap:Ljava/util/Map;

    move-object/from16 v81, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMaxJobSlipMap:Ljava/util/Map;

    move-object/from16 v82, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mBarcodeDetectionEnabled:[Z

    move-object/from16 v83, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mBarcodeTimeBetweenScans:[I

    move-object/from16 v84, v1

    iget-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mBarcodeDetectionBackoff:Z

    move/from16 v85, v1

    iget-wide v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mEngineMfnrEstimate:J

    move-wide/from16 v86, v1

    iget-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mGestureRemoveDelay:Z

    move/from16 v88, v1

    iget v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSuperSlowMotionLowLightThreshold:I

    move/from16 v89, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSuperSlowMotionLib:Ljava/lang/String;

    move-object/from16 v90, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mStarTrailsLib:Ljava/lang/String;

    move-object/from16 v91, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSlideScanConfigs:[F

    move-object/from16 v92, v1

    iget-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPortraitLens:Z

    move/from16 v93, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPortraitLensCameraType:[Lcom/motorola/camera/settings/CameraType;

    move-object/from16 v94, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPortraitLensZoomValue:[F

    move-object/from16 v95, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPortraitLensBlurLevel:[I

    move-object/from16 v96, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFastCaptureUITimeoutMap:Ljava/util/Map;

    move-object/from16 v97, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mVideoPortraitConfigs:Ljava/util/Map;

    move-object/from16 v98, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMeiSheVideoFxConfigs:Ljava/util/Map;

    move-object/from16 v99, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMeiSheAnimatedStickerConfigs:Ljava/util/Map;

    move-object/from16 v100, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mZoomModeSwitchGains:[F

    move-object/from16 v101, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDualCalibrationDataVendor:Ljava/lang/String;

    move-object/from16 v102, v1

    iget-wide v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mInSensorCropZoomThreshold:D

    move-wide/from16 v103, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mInSensorCropScenes:Ljava/util/HashSet;

    move-object/from16 v105, v1

    iget v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mThumbnailJpegQuality:I

    move/from16 v106, v1

    iget v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMaxFallBackCount:I

    move/from16 v107, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFallBackScenes:Ljava/util/HashSet;

    move-object/from16 v108, v1

    iget-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mRawHdrModes:Ljava/util/HashSet;

    move-object/from16 v109, v1

    iget-object v0, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFallBackISOThreshold:[F

    move-object/from16 v110, v0

    move-object/from16 v1, v112

    move-object/from16 v2, v113

    invoke-direct/range {v1 .. v110}, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;-><init>([I[I[I[I[I[I[I[I[Ljava/lang/String;[I[I[I[I[I[I[ILjava/util/List;IIIZFFFF[JJJ[I[I[I[I[F[F[I[I[F[FLjava/util/Map;Ljava/util/Map;Z[ZLjava/lang/String;FZ[FLjava/lang/String;F[ZLjava/lang/String;ZLjava/util/Map;Ljava/util/Map;[Z[Z[Z[F[Lcom/motorola/camera/settings/CameraType;[Lcom/motorola/camera/settings/CameraType;[Lcom/motorola/camera/JsonConfig$CameraMapping;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;Ljava/util/HashSet;[DFFIDLorg/json/JSONArray;I[F[I[ZLjava/util/Map;Ljava/util/Map;Ljava/util/Map;[Z[IZJZILjava/lang/String;Ljava/lang/String;[FZ[Lcom/motorola/camera/settings/CameraType;[F[ILjava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;[FLjava/lang/String;DLjava/util/HashSet;IILjava/util/HashSet;Ljava/util/HashSet;[F)V

    return-object v111
.end method

.method public static -$$Nest$msetAnalogGainThreshold(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;F)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mAnalogGainThreshold:F

    return-void
.end method

.method public static -$$Nest$msetBufferCount(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;II[I)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    array-length p1, p3

    new-array p1, p1, [I

    if-ne p2, v1, :cond_0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDepthDualConfigInputBufferCnt:[I

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDepthDualConfigOutputBufferCnt:[I

    :goto_0
    array-length p0, p3

    invoke-static {p3, v2, p1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    array-length p1, p3

    new-array p1, p1, [I

    if-ne p2, v1, :cond_2

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mZslDepthDualConfigInputBufferCnt:[I

    goto :goto_1

    :cond_2
    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mZslDepthDualConfigOutputBufferCnt:[I

    :goto_1
    array-length p0, p3

    invoke-static {p3, v2, p1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_3
    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    array-length p1, p3

    new-array p1, p1, [I

    if-ne p2, v1, :cond_4

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDualConfigInputBufferCnt:[I

    goto :goto_2

    :cond_4
    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDualConfigOutputBufferCnt:[I

    :goto_2
    array-length p0, p3

    invoke-static {p3, v2, p1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_5
    array-length p1, p3

    new-array p1, p1, [I

    if-ne p2, v1, :cond_6

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mNormalConfigInputBufferCnt:[I

    goto :goto_3

    :cond_6
    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mNormalConfigOutputBufferCnt:[I

    :goto_3
    array-length p0, p3

    invoke-static {p3, v2, p1, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    return-void
.end method

.method public static -$$Nest$msetDepthSystemCalibration(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[Lcom/motorola/camera/settings/CameraType;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDepthSystemCalibrationDevices:[Lcom/motorola/camera/settings/CameraType;

    return-void
.end method

.method public static -$$Nest$msetDualCalibrationDataVendor(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDualCalibrationDataVendor:Ljava/lang/String;

    return-void
.end method

.method public static -$$Nest$msetDualDepthMaxJobCnt(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[I)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDualDepthConfigMaxJobCnt:[I

    return-void
.end method

.method public static -$$Nest$msetDualMaxJobCnt(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[I)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDualConfigMaxJobCnt:[I

    return-void
.end method

.method public static -$$Nest$msetEngineMfnrEstimate(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;J)V
    .locals 0

    iput-wide p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mEngineMfnrEstimate:J

    return-void
.end method

.method public static -$$Nest$msetExtraFreeMemSizeMbVals(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[I)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mExtraFreeMemSizeMb:[I

    return-void
.end method

.method public static -$$Nest$msetFallBackISOThreshold(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[F)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFallBackISOThreshold:[F

    return-void
.end method

.method public static -$$Nest$msetFallBackScenes(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFallBackScenes:Ljava/util/HashSet;

    return-void
.end method

.method public static -$$Nest$msetGainOnlyQcfaDecision(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mGainOnlyQcfaDecision:Z

    return-void
.end method

.method public static -$$Nest$msetGestureRemoveDelay(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mGestureRemoveDelay:Z

    return-void
.end method

.method public static -$$Nest$msetGrallocUsageFlags(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[Ljava/lang/String;)V
    .locals 2

    array-length v0, p1

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mGrallocUsageFlags:[Ljava/lang/String;

    const/4 p0, 0x0

    invoke-static {p1, p0, v1, p0, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static -$$Nest$msetHighResSnapshotMinInterval(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mHighResSnapShotMinInterval:Ljava/util/Map;

    return-void
.end method

.method public static -$$Nest$msetInSensorCropScenes(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mInSensorCropScenes:Ljava/util/HashSet;

    return-void
.end method

.method public static -$$Nest$msetInSensorCropZoomThreshold(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;D)V
    .locals 0

    iput-wide p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mInSensorCropZoomThreshold:D

    return-void
.end method

.method public static -$$Nest$msetLowMemKillSizeMbVals(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[I)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mLowMemKillSizeMb:[I

    return-void
.end method

.method public static -$$Nest$msetMaxFallBackCount(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMaxFallBackCount:I

    return-void
.end method

.method public static -$$Nest$msetMaxMultishotRates(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[F)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMaxMultishotRates:[F

    return-void
.end method

.method public static -$$Nest$msetMaxMultishotRatesLvl1(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[F)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMaxMultishotRatesLvl1:[F

    return-void
.end method

.method public static -$$Nest$msetMotoFlashTuningEnable(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMotoFlashTuningEnable:[Z

    return-void
.end method

.method public static -$$Nest$msetNonSingleSessionRemosaicEstimate(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;J)V
    .locals 0

    iput-wide p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mNonSingleSessionRemosaicEstimate:J

    return-void
.end method

.method public static -$$Nest$msetOfflineReprocEnabled(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mOfflineReprocEnabled:[Z

    return-void
.end method

.method public static -$$Nest$msetPhysicalCameraCount(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPhysicalCameraCount:I

    return-void
.end method

.method public static -$$Nest$msetPreviewRateDepthLimit(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[I)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPreviewRateDepthLimit:[I

    array-length p0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method public static -$$Nest$msetPreviewRateLimitDefault(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[I)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPreviewRateLimitDefault:[I

    array-length p0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method public static -$$Nest$msetPreviewRateLimitLvl1(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[I)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPreviewRateLimitLvl1:[I

    array-length p0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method public static -$$Nest$msetPreviewRateLimitLvl2(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[I)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPreviewRateLimitLvl2:[I

    array-length p0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    return-void
.end method

.method public static -$$Nest$msetQcfaFastCaptureUITimeout(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;J)V
    .locals 0

    iput-wide p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mQcfaFastCaptureUITimeout:J

    return-void
.end method

.method public static -$$Nest$msetSceneDetectionPlatform(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSceneDetectionPlatform:Ljava/lang/String;

    return-void
.end method

.method public static -$$Nest$msetSingleMaxJobCnt(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[I)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSingleConfigMaxJobCnt:[I

    return-void
.end method

.method public static -$$Nest$msetSingleNormalOverrideMaxJobCnt(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[I)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSingleConfigNormalOverrideJobCnt:[I

    return-void
.end method

.method public static -$$Nest$msetSingleSessionRemosaicEstimate(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[J)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSingleSessionRemosaicEstimate:[J

    return-void
.end method

.method public static -$$Nest$msetSingleSlipMaxJobCnt(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[I)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSingleSlipConfigMaxJobCnt:[I

    return-void
.end method

.method public static -$$Nest$msetSingleSpecialOverrideMaxJobCnt(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[I)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSingleConfigSpecialOverrideJobCnt:[I

    return-void
.end method

.method public static -$$Nest$msetSkinToneCountryMapping(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSkinToneCountryMapping:Ljava/util/Map;

    return-void
.end method

.method public static -$$Nest$msetSkinToneDetectionEnabled(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSkinToneDetectionEnabled:Z

    return-void
.end method

.method public static -$$Nest$msetSkinToneSkuMapping(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSkinToneSkuMapping:Ljava/util/Map;

    return-void
.end method

.method public static -$$Nest$msetSkipPattern(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[I)V
    .locals 2

    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFullFrameConfigSkipPatternCnt:[I

    array-length p0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, v0, v1, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static -$$Nest$msetSnapshotMinInterval(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSnapshotMinInterval:Ljava/util/Map;

    return-void
.end method

.method public static -$$Nest$msetSuperRemosaicSettings(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[F)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSuperRemosaicTriggers:[F

    return-void
.end method

.method public static -$$Nest$msetSupportedRawHdrModes(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mRawHdrModes:Ljava/util/HashSet;

    return-void
.end method

.method public static -$$Nest$msetToHighResRgThreshold(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;F)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mToHighResRgThreshold:F

    return-void
.end method

.method public static -$$Nest$msetToNormalResRgThreshold(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;F)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mToNormalResRgThreshold:F

    return-void
.end method

.method public static -$$Nest$msetTorchControlEnable(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mTorchControlEnable:[Z

    return-void
.end method

.method public static -$$Nest$msetUltraResReminderRgThreshold(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;F)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mUltraResReminderRgThreshold:F

    return-void
.end method

.method public static -$$Nest$msetUseAppShutterControl(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mUseAppShutterControl:Z

    return-void
.end method

.method public static -$$Nest$msetUseCustomNoiseReduction(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mUseCustomNoiseReduction:[Z

    return-void
.end method

.method public static -$$Nest$msetUseHQPreview(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mUseHQPreview:[Z

    return-void
.end method

.method public static -$$Nest$msetUseHighResolutionOutput(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[Z)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mUseHighResolutionOutput:[Z

    return-void
.end method

.method public static -$$Nest$msetZoomBlendingManualX(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[F)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mZoomBlendingManualX:[F

    return-void
.end method

.method public static -$$Nest$msetZoomBlendingSegments(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;[F)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mZoomBlendingSegments:[F

    return-void
.end method

.method public static -$$Nest$msetZoomOverride(Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mZoomOverride:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 26

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x14

    filled-new-array {v1, v1, v1}, [I

    move-result-object v2

    const/16 v3, 0xe

    filled-new-array {v3, v3, v3}, [I

    move-result-object v3

    const-string v4, "default"

    filled-new-array {v4, v4, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    filled-new-array {v5, v5, v5}, [I

    move-result-object v6

    const/16 v7, 0x1e

    filled-new-array {v7, v7, v7}, [I

    move-result-object v7

    filled-new-array {v1, v1, v1}, [I

    move-result-object v1

    const/16 v8, 0xf

    filled-new-array {v8, v8, v8}, [I

    move-result-object v9

    filled-new-array {v8, v8, v8}, [I

    move-result-object v8

    const/4 v10, 0x3

    new-array v11, v10, [F

    fill-array-data v11, :array_0

    const/16 v12, 0x12c

    filled-new-array {v12, v12, v12}, [I

    move-result-object v12

    const/16 v13, 0xc8

    filled-new-array {v13, v13, v13}, [I

    move-result-object v14

    const/4 v15, 0x1

    new-array v13, v15, [F

    const/high16 v10, 0x3f800000    # 1.0f

    aput v10, v13, v5

    move-object/from16 v16, v13

    new-array v13, v15, [F

    aput v10, v13, v5

    const/4 v15, 0x3

    new-array v10, v15, [Z

    fill-array-data v10, :array_1

    new-array v5, v15, [Z

    fill-array-data v5, :array_2

    move-object/from16 v17, v5

    new-array v5, v15, [Z

    fill-array-data v5, :array_3

    new-array v15, v15, [Z

    fill-array-data v15, :array_4

    move-object/from16 v18, v15

    sget-object v15, Lcom/motorola/camera/settings/CameraType;->BACK_MAIN:Lcom/motorola/camera/settings/CameraType;

    move-object/from16 v19, v5

    sget-object v5, Lcom/motorola/camera/settings/CameraType;->FRONT_MAIN:Lcom/motorola/camera/settings/CameraType;

    move-object/from16 v20, v10

    sget-object v10, Lcom/motorola/camera/settings/CameraType;->UNKNOWN:Lcom/motorola/camera/settings/CameraType;

    filled-new-array {v15, v5, v10}, [Lcom/motorola/camera/settings/CameraType;

    move-result-object v5

    const-string v10, "HDR"

    filled-new-array {v10, v10, v10}, [Ljava/lang/String;

    move-result-object v10

    const/16 v15, 0xd

    new-array v15, v15, [Z

    fill-array-data v15, :array_5

    sget-object v21, Lcom/motorola/camera/settings/CameraType;->LOGICAL_DEPTH:Lcom/motorola/camera/settings/CameraType;

    move-object/from16 v22, v15

    filled-new-array/range {v21 .. v21}, [Lcom/motorola/camera/settings/CameraType;

    move-result-object v15

    move-object/from16 v23, v5

    move-object/from16 v21, v10

    const/4 v10, 0x0

    new-array v5, v10, [Lcom/motorola/camera/settings/CameraType;

    move-object/from16 v24, v5

    new-array v5, v10, [F

    move-object/from16 v25, v5

    new-array v5, v10, [I

    iput-object v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mNormalConfigInputBufferCnt:[I

    iput-object v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mNormalConfigOutputBufferCnt:[I

    iput-object v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDualConfigInputBufferCnt:[I

    iput-object v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDualConfigOutputBufferCnt:[I

    iput-object v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDepthDualConfigInputBufferCnt:[I

    iput-object v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDepthDualConfigOutputBufferCnt:[I

    iput-object v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mZslDepthDualConfigInputBufferCnt:[I

    iput-object v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mZslDepthDualConfigOutputBufferCnt:[I

    iput-object v4, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mGrallocUsageFlags:[Ljava/lang/String;

    iput-object v6, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFullFrameConfigSkipPatternCnt:[I

    iput-boolean v10, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mUseAppShutterControl:Z

    iput v10, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPhysicalCameraCount:I

    const/16 v2, 0x9

    iput v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->m3ATimeoutFrames:I

    const/16 v2, 0x1388

    iput v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFocusTimeoutDurationFlash:I

    const/16 v2, 0x3e8

    iput v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSetRepeatingSendErrorDelay:I

    iput-boolean v10, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mGainOnlyQcfaDecision:Z

    const/high16 v2, -0x40800000    # -1.0f

    iput v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mAnalogGainThreshold:F

    const/high16 v2, 0x40000000    # 2.0f

    iput v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mToHighResRgThreshold:F

    const/high16 v2, 0x40c00000    # 6.0f

    iput v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mToNormalResRgThreshold:F

    iput v2, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mUltraResReminderRgThreshold:F

    const/4 v2, 0x2

    new-array v3, v2, [J

    fill-array-data v3, :array_6

    iput-object v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSingleSessionRemosaicEstimate:[J

    const-wide/16 v3, 0x1388

    iput-wide v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mNonSingleSessionRemosaicEstimate:J

    const-wide/16 v3, 0x0

    iput-wide v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mQcfaFastCaptureUITimeout:J

    iput-object v7, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPreviewRateLimitDefault:[I

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPreviewRateLimitLvl1:[I

    iput-object v9, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPreviewRateLimitLvl2:[I

    iput-object v8, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPreviewRateDepthLimit:[I

    iput-object v11, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMaxMultishotRates:[F

    iput-object v11, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMaxMultishotRatesLvl1:[F

    iput-object v12, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mLowMemKillSizeMb:[I

    iput-object v14, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mExtraFreeMemSizeMb:[I

    move-object/from16 v1, v16

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mZoomBlendingSegments:[F

    iput-object v13, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mZoomBlendingManualX:[F

    move-object/from16 v1, v20

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mUseHighResolutionOutput:[Z

    move-object/from16 v1, v17

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mUseHQPreview:[Z

    const-string v1, "none"

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSceneDetectionPlatform:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSkinToneDetectionEnabled:Z

    move-object/from16 v1, v19

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mUseCustomNoiseReduction:[Z

    move-object/from16 v1, v18

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mOfflineReprocEnabled:[Z

    new-array v1, v2, [F

    fill-array-data v1, :array_7

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSuperRemosaicTriggers:[F

    iput-object v15, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDepthSystemCalibrationDevices:[Lcom/motorola/camera/settings/CameraType;

    const-string v1, "#FFFFFFFF"

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashColor:Ljava/lang/String;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashAlpha:F

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashTorchEnable:Z

    new-array v3, v2, [F

    fill-array-data v3, :array_8

    iput-object v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashLuxRange:[F

    move-object/from16 v3, v23

    iput-object v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mCameraTypes:[Lcom/motorola/camera/settings/CameraType;

    new-array v3, v1, [Lcom/motorola/camera/JsonConfig$CameraMapping;

    iput-object v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mCameraMappings:[Lcom/motorola/camera/JsonConfig$CameraMapping;

    new-instance v1, Ljava/util/HashSet;

    invoke-static/range {v21 .. v21}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDisableAppZslScenes:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDisableHalZslModes:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mExtraRawStreamModes:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mEarlyReprocScenes:Ljava/util/HashSet;

    const/4 v1, 0x0

    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashAwbSpeed:F

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_9

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDisplayCutoutConfigs:[F

    const/16 v1, 0x190

    const/16 v3, 0xc8

    filled-new-array {v3, v1}, [I

    move-result-object v1

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mQuickCaptureVibrationConfigs:[I

    const-string v1, ""

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashCctTable:Ljava/lang/String;

    move-object/from16 v1, v22

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mTorchControlEnable:[Z

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mGestureRemoveDelay:Z

    new-array v3, v2, [Z

    fill-array-data v3, :array_a

    iput-object v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mBarcodeDetectionEnabled:[Z

    iput-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mBarcodeDetectionBackoff:Z

    const-wide/16 v3, -0x1

    iput-wide v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mEngineMfnrEstimate:J

    const/16 v3, 0xc8

    iput v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSuperSlowMotionLowLightThreshold:I

    const/4 v3, 0x1

    new-array v3, v3, [F

    const/high16 v4, 0x42960000    # 75.0f

    aput v4, v3, v1

    iput-object v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSlideScanConfigs:[F

    iput-boolean v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPortraitLens:Z

    move-object/from16 v1, v24

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPortraitLensCameraType:[Lcom/motorola/camera/settings/CameraType;

    move-object/from16 v1, v25

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPortraitLensZoomValue:[F

    iput-object v5, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPortraitLensBlurLevel:[I

    new-array v1, v2, [F

    fill-array-data v1, :array_b

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mZoomModeSwitchGains:[F

    const-string v1, "arcsoft"

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDualCalibrationDataVendor:Ljava/lang/String;

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    iput-wide v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mInSensorCropZoomThreshold:D

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mInSensorCropScenes:Ljava/util/HashSet;

    const/4 v1, 0x0

    iput v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMaxFallBackCount:I

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFallBackScenes:Ljava/util/HashSet;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mRawHdrModes:Ljava/util/HashSet;

    return-void

    nop

    :array_0
    .array-data 4
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
        0x40a00000    # 5.0f
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_4
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_5
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    nop

    :array_6
    .array-data 8
        0xbb8
        0xbb8
    .end array-data

    :array_7
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_8
    .array-data 4
        0x41200000    # 10.0f
        0x41a00000    # 20.0f
    .end array-data

    :array_9
    .array-data 4
        0x42dc0000    # 110.0f
        0x429a0000    # 77.0f
        0x3ecccccd    # 0.4f
        0x3e4ccccd    # 0.2f
    .end array-data

    :array_a
    .array-data 1
        0x0t
        0x0t
    .end array-data

    nop

    :array_b
    .array-data 4
        0x0
        0x0
    .end array-data
.end method


# virtual methods
.method public final set3ATimeoutFrames(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->m3ATimeoutFrames:I

    return-void
.end method

.method public final setBarcodeDetectionBackoff(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mBarcodeDetectionBackoff:Z

    return-void
.end method

.method public final setBarcodeDetectionEnabled([Z)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mBarcodeDetectionEnabled:[Z

    return-void
.end method

.method public final setBarcodeTimeBetweenScans([I)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mBarcodeTimeBetweenScans:[I

    return-void
.end method

.method public final setCameraMappings([Lcom/motorola/camera/JsonConfig$CameraMapping;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mCameraMappings:[Lcom/motorola/camera/JsonConfig$CameraMapping;

    return-void
.end method

.method public final setCameraTypes([Lcom/motorola/camera/settings/CameraType;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mCameraTypes:[Lcom/motorola/camera/settings/CameraType;

    return-void
.end method

.method public final setDisableAppZslScenes(Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDisableAppZslScenes:Ljava/util/HashSet;

    return-void
.end method

.method public final setDisableHalZslModes(Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDisableHalZslModes:Ljava/util/HashSet;

    return-void
.end method

.method public final setDisplayCutoutConfigs([F)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDisplayCutoutConfigs:[F

    return-void
.end method

.method public final setDisplayCutoutsCoordinates(Lorg/json/JSONArray;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mDisplayCutoutsCoordinate:Lorg/json/JSONArray;

    return-void
.end method

.method public final setEarlyReprocScenes(Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mEarlyReprocScenes:Ljava/util/HashSet;

    return-void
.end method

.method public final setExtraRawStreamModes(Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mExtraRawStreamModes:Ljava/util/HashSet;

    return-void
.end method

.method public final setFastCaptureUITimeoutMap(Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFastCaptureUITimeoutMap:Ljava/util/Map;

    return-void
.end method

.method public final setFlashAlpha(F)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashAlpha:F

    return-void
.end method

.method public final setFlashAwbSpeed(F)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashAwbSpeed:F

    return-void
.end method

.method public final setFlashCctTableString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashCctTable:Ljava/lang/String;

    return-void
.end method

.method public final setFlashColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashColor:Ljava/lang/String;

    return-void
.end method

.method public final setFlashLuxRange([F)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashLuxRange:[F

    return-void
.end method

.method public final setFlashTorchEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFlashTorchEnable:Z

    return-void
.end method

.method public final setFocusTimeoutDurationFlash(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mFocusTimeoutDurationFlash:I

    return-void
.end method

.method public final setMaxConcurrentJobsMap(Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMaxConcurrentJobsMap:Ljava/util/Map;

    return-void
.end method

.method public final setMaxJobCountMap(Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMaxJobCountMap:Ljava/util/Map;

    return-void
.end method

.method public final setMaxJobSlipMap(Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMaxJobSlipMap:Ljava/util/Map;

    return-void
.end method

.method public final setMcfSlowCaptureModes(Ljava/util/HashSet;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMcfSlowCaptureModes:Ljava/util/HashSet;

    return-void
.end method

.method public final setMeiSheAnimatedStickerConfigs(Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMeiSheAnimatedStickerConfigs:Ljava/util/Map;

    return-void
.end method

.method public final setMeiSheVideoFxConfigs(Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mMeiSheVideoFxConfigs:Ljava/util/Map;

    return-void
.end method

.method public final setPanoDistortions([D)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPanoDistortions:[D

    return-void
.end method

.method public final setPanoExpAdjustment(F)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPanoExpAdj:F

    return-void
.end method

.method public final setPanoMaxGain(F)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPanoMaxGain:F

    return-void
.end method

.method public final setPanoNoiseReductionLevel(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPanoNoiseReductionLevel:I

    return-void
.end method

.method public final setPanoRotationRatio(D)V
    .locals 0

    iput-wide p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPanoRotationRatio:D

    return-void
.end method

.method public final setPortraitLens(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPortraitLens:Z

    return-void
.end method

.method public final setPortraitLensBlurLevel([I)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPortraitLensBlurLevel:[I

    return-void
.end method

.method public final setPortraitLensCameraType([Lcom/motorola/camera/settings/CameraType;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPortraitLensCameraType:[Lcom/motorola/camera/settings/CameraType;

    return-void
.end method

.method public final setPortraitLensZoomValue([F)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mPortraitLensZoomValue:[F

    return-void
.end method

.method public final setQuickCaptureVibrationConfigs([I)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mQuickCaptureVibrationConfigs:[I

    return-void
.end method

.method public final setSetRepeatingSendErrorDelay(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSetRepeatingSendErrorDelay:I

    return-void
.end method

.method public final setSlideScanConfigs([F)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSlideScanConfigs:[F

    return-void
.end method

.method public final setStarTrailsLib(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mStarTrailsLib:Ljava/lang/String;

    return-void
.end method

.method public final setSuperSlowMotionLib(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSuperSlowMotionLib:Ljava/lang/String;

    return-void
.end method

.method public final setSuperSlowMotionLowLightThreshold(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mSuperSlowMotionLowLightThreshold:I

    return-void
.end method

.method public final setThumbnailJpegQuality(I)V
    .locals 0

    iput p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mThumbnailJpegQuality:I

    return-void
.end method

.method public final setVideoPortraitConfigs(Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mVideoPortraitConfigs:Ljava/util/Map;

    return-void
.end method

.method public final setZoomModeSwitchGains([F)V
    .locals 0

    iput-object p1, p0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder$Builder;->mZoomModeSwitchGains:[F

    return-void
.end method
