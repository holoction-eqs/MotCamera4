.class public Lcom/meicam/effect/sdk/NvsMakeupEffectInfo;
.super Lcom/meicam/effect/sdk/NvsArbitraryData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meicam/effect/sdk/NvsMakeupEffectInfo$MakeupEffectLayerHighlight;,
        Lcom/meicam/effect/sdk/NvsMakeupEffectInfo$MakeupEffectLayerLut;,
        Lcom/meicam/effect/sdk/NvsMakeupEffectInfo$MakeupEffectLayer3D;,
        Lcom/meicam/effect/sdk/NvsMakeupEffectInfo$MakeupEffectLayer;,
        Lcom/meicam/effect/sdk/NvsMakeupEffectInfo$MakeupEffect;
    }
.end annotation


# static fields
.field public static final MAKEUP_EFFECT_BLENDING_MODE_ADD:I = 0x4

.field public static final MAKEUP_EFFECT_BLENDING_MODE_EXCLUSION:I = 0x5

.field public static final MAKEUP_EFFECT_BLENDING_MODE_MULTIPLY:I = 0x1

.field public static final MAKEUP_EFFECT_BLENDING_MODE_NORMAL:I = 0x0

.field public static final MAKEUP_EFFECT_BLENDING_MODE_SCREEN:I = 0x3

.field public static final MAKEUP_EFFECT_BLENDING_MODE_SUBTRACT:I = 0x2

.field public static final MAKEUP_EFFECT_BLENDING_MODE_UNKNOWN:I = -0x1

.field public static final MAKEUP_EFFECT_CUSTOM_ENABLED_FLAG_ALL:I = 0xff

.field public static final MAKEUP_EFFECT_CUSTOM_ENABLED_FLAG_BLUSHER:I = 0x20

.field public static final MAKEUP_EFFECT_CUSTOM_ENABLED_FLAG_BRIGHTEN:I = 0x80

.field public static final MAKEUP_EFFECT_CUSTOM_ENABLED_FLAG_EYEBROW:I = 0x2

.field public static final MAKEUP_EFFECT_CUSTOM_ENABLED_FLAG_EYELASH:I = 0x8

.field public static final MAKEUP_EFFECT_CUSTOM_ENABLED_FLAG_EYELINER:I = 0x10

.field public static final MAKEUP_EFFECT_CUSTOM_ENABLED_FLAG_EYESHADOW:I = 0x4

.field public static final MAKEUP_EFFECT_CUSTOM_ENABLED_FLAG_LIP:I = 0x1

.field public static final MAKEUP_EFFECT_CUSTOM_ENABLED_FLAG_NONE:I = 0x0

.field public static final MAKEUP_EFFECT_CUSTOM_ENABLED_FLAG_SHADOW:I = 0x40

.field public static final MAKEUP_EFFECT_LAYER_TYPE_3D:I = 0x0

.field public static final MAKEUP_EFFECT_LAYER_TYPE_HIGHLIGHT:I = 0x2

.field public static final MAKEUP_EFFECT_LAYER_TYPE_LUT:I = 0x1


# instance fields
.field private makeupEffectArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/meicam/effect/sdk/NvsMakeupEffectInfo$MakeupEffect;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/meicam/effect/sdk/NvsArbitraryData;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsMakeupEffectInfo;->makeupEffectArray:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addMakeupEffect(Lcom/meicam/effect/sdk/NvsMakeupEffectInfo$MakeupEffect;)V
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsMakeupEffectInfo;->makeupEffectArray:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getMakeupEffectArray()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/meicam/effect/sdk/NvsMakeupEffectInfo$MakeupEffect;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsMakeupEffectInfo;->makeupEffectArray:Ljava/util/List;

    return-object p0
.end method

.method public removeMakeupEffectByIndex(I)V
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/meicam/effect/sdk/NvsMakeupEffectInfo;->makeupEffectArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsMakeupEffectInfo;->makeupEffectArray:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method
