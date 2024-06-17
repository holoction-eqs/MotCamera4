.class public Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final MOK:I = 0x0

.field private static final SEARCH_STAR_FAILED:I = 0x7007

.field private static final SKY_AREA_TOO_SMALL:I = 0x7006

.field private static final TAG:Ljava/lang/String; = "ArcsoftStellarTrack"

.field private static sIsInitialized:Z = false


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    :try_start_0
    const-string v0, "as-stellar-track"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;->TAG:Ljava/lang/String;

    const-string v2, "error loading as-stellar-track"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native deinit()I
.end method

.method public static deinitSt()V
    .locals 0

    invoke-static {}, Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;->deinit()I

    return-void
.end method

.method private static native getPhoto(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)[B
.end method

.method public static getPhotoSt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)[B
    .locals 0

    invoke-static {p0, p1}, Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;->getPhoto(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)[B

    move-result-object p0

    return-object p0
.end method

.method private static native getPreview(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
.end method

.method public static getPreviewSt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I
    .locals 0

    invoke-static {p0, p1}, Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;->getPreview(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)I

    move-result p0

    return p0
.end method

.method private static native init(IILjava/lang/String;DDDIIIIIIDD[DIIIII)I
.end method

.method public static initSt(IIDDDIIIIIIDD[D)Z
    .locals 26

    sget-object v0, Lcom/motorola/camera/JsonConfig;->mDeviceConfigHolder:Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;

    iget-object v3, v0, Lcom/motorola/camera/JsonConfig$DeviceConfigHolder;->mStarTrailsLib:Ljava/lang/String;

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0xf0

    const/16 v25, 0x5

    move/from16 v1, p0

    move/from16 v2, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    move/from16 v14, p12

    move/from16 v15, p13

    move-wide/from16 v16, p14

    move-wide/from16 v18, p16

    move-object/from16 v20, p18

    invoke-static/range {v1 .. v25}, Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;->init(IILjava/lang/String;DDDIIIIIIDD[DIIIII)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;->sIsInitialized:Z

    return v0
.end method

.method private static native interpolate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIFFFFFIDZFDDDIIIIIIDD[D)I
.end method

.method public static interpolateSt(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIFFFFFFIDDDDIIIIIIDD[DZ)I
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v13, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    move/from16 v8, p9

    move/from16 v9, p10

    move-wide/from16 v10, p11

    move-wide/from16 v14, p13

    move-wide/from16 v16, p15

    move-wide/from16 v18, p17

    move/from16 v20, p19

    move/from16 v21, p20

    move/from16 v22, p21

    move/from16 v23, p22

    move/from16 v24, p23

    move/from16 v25, p24

    move-wide/from16 v26, p25

    move-wide/from16 v28, p27

    move-object/from16 v30, p29

    move/from16 v12, p30

    invoke-static/range {v0 .. v30}, Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;->interpolate(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIFFFFFIDZFDDDIIIIIIDD[D)I

    move-result v0

    const/16 v1, 0x7007

    if-ne v0, v1, :cond_0

    sget-object v1, Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;->TAG:Ljava/lang/String;

    const-string v2, "Star Trails Failed processing: SEARCH_STAR_FAILED"

    :goto_0
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const/16 v1, 0x7006

    if-ne v0, v1, :cond_1

    sget-object v1, Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;->TAG:Ljava/lang/String;

    const-string v2, "Star Trails Failed processing: SKY_AREA_TOO_SMALL"

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    sget-object v1, Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;->TAG:Ljava/lang/String;

    const-string v2, "Star Trails Failed processing: unknown issue!"

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method public static isInitialized()Z
    .locals 1

    sget-boolean v0, Lcom/motorola/camera/arcsoft/ArcsoftStellarTrack;->sIsInitialized:Z

    return v0
.end method
