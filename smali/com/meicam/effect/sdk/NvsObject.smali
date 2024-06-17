.class public Lcom/meicam/effect/sdk/NvsObject;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TEMPLATE_KEY_BEST_SEEK_TIME:Ljava/lang/String; = "MSTemplate-BestSeekTime"

.field public static final TEMPLATE_KEY_CLIP_RAW_HEIGHT:Ljava/lang/String; = "MSTemplate-ClipRawHeight"

.field public static final TEMPLATE_KEY_CLIP_RAW_WIDTH:Ljava/lang/String; = "MSTemplate-ClipRawWidth"

.field public static final TEMPLATE_KEY_CURVE_SPEED_TYPE:Ljava/lang/String; = "MSTemplate-CurveSpeedType"

.field public static final TEMPLATE_KEY_FOOTAGE_CAN_REPLACE:Ljava/lang/String; = "MSTemplate-FootageCanReplace"

.field public static final TEMPLATE_KEY_FOOTAGE_ID:Ljava/lang/String; = "MSTemplate-FootageId"

.field public static final TEMPLATE_KEY_FOOTAGE_M3U8_NAME:Ljava/lang/String; = "MSTemplate-FootageM3U8Name"

.field public static final TEMPLATE_KEY_FOOTAGE_NAME:Ljava/lang/String; = "MSTemplate-FootageName"

.field public static final TEMPLATE_KEY_FOOTAGE_NEED_REVERSE:Ljava/lang/String; = "MSTemplate-FootageNeedReverse"

.field public static final TEMPLATE_KEY_FOOTAGE_TAGS:Ljava/lang/String; = "MSTemplate-FootageTags"

.field public static final TEMPLATE_KEY_FOOTAGE_TYPE:Ljava/lang/String; = "MSTemplate-FootageType"

.field public static final TEMPLATE_KEY_FX_GROUP:Ljava/lang/String; = "MSTemplate-FxGroup"

.field public static final TEMPLATE_KEY_MASK_TYPE:Ljava/lang/String; = "MSTemplate-MaskType"

.field public static final TEMPLATE_KEY_REPLACE_ID:Ljava/lang/String; = "MSTemplate-ReplaceId"

.field public static final TEMPLATE_KEY_TRANS_TYPE_CUT:Ljava/lang/String; = "MSTemplate-TransType-Cut"

.field public static final TEMPLATE_KEY_VOLUME_TYPE:Ljava/lang/String; = "MSTemplate-VolumeType"

.field public static final TEMPLATE_VALUE_CURVE_SPEED_TYPE_BULLET:Ljava/lang/String; = "MSTemplate-CurveSpeedType-bullet"

.field public static final TEMPLATE_VALUE_CURVE_SPEED_TYPE_CUSTOM:Ljava/lang/String; = "MSTemplate-CurveSpeedType-Custom"

.field public static final TEMPLATE_VALUE_CURVE_SPEED_TYPE_HERO:Ljava/lang/String; = "MSTemplate-CurveSpeedType-Hero"

.field public static final TEMPLATE_VALUE_CURVE_SPEED_TYPE_IN:Ljava/lang/String; = "MSTemplate-CurveSpeedType-In"

.field public static final TEMPLATE_VALUE_CURVE_SPEED_TYPE_MONTAGE:Ljava/lang/String; = "MSTemplate-CurveSpeedType-Montage"

.field public static final TEMPLATE_VALUE_CURVE_SPEED_TYPE_OUT:Ljava/lang/String; = "MSTemplate-CurveSpeedType-Out"

.field public static final TEMPLATE_VALUE_CURVE_SPEED_TYPE_PLUS:Ljava/lang/String; = "MSTemplate-CurveSpeedType-Plus"

.field public static final TEMPLATE_VALUE_MASK_TYPE_CIRCLE:Ljava/lang/String; = "MSTemplate-MaskType-Circle"

.field public static final TEMPLATE_VALUE_MASK_TYPE_HEART:Ljava/lang/String; = "MSTemplate-MaskType-Heart"

.field public static final TEMPLATE_VALUE_MASK_TYPE_LINE:Ljava/lang/String; = "MSTemplate-MaskType-Line"

.field public static final TEMPLATE_VALUE_MASK_TYPE_MIRROR:Ljava/lang/String; = "MSTemplate-MaskType-Mirror"

.field public static final TEMPLATE_VALUE_MASK_TYPE_RECT:Ljava/lang/String; = "MSTemplate-MaskType-Rect"

.field public static final TEMPLATE_VALUE_MASK_TYPE_STAR:Ljava/lang/String; = "MSTemplate-MaskType-Star"


# instance fields
.field private m_attachmentMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected m_internalObject:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/meicam/effect/sdk/NvsObject;->m_internalObject:J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/meicam/effect/sdk/NvsObject;->m_attachmentMap:Ljava/util/HashMap;

    return-void
.end method

.method private native nativeGetTemplateAttachment(JLjava/lang/String;)Ljava/lang/String;
.end method

.method private native nativeSetTemplateAttachment(JLjava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public getAttachment(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsObject;->m_attachmentMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getInternalObject()J
    .locals 2

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsObject;->m_internalObject:J

    return-wide v0
.end method

.method public getTemplateAttachment(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1}, Lcom/meicam/effect/sdk/NvsObject;->nativeGetTemplateAttachment(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setAttachment(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/meicam/effect/sdk/NvsObject;->m_attachmentMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setInternalObject(J)V
    .locals 0

    iput-wide p1, p0, Lcom/meicam/effect/sdk/NvsObject;->m_internalObject:J

    return-void
.end method

.method public setTemplateAttachment(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-wide v0, p0, Lcom/meicam/effect/sdk/NvsObject;->m_internalObject:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/meicam/effect/sdk/NvsObject;->nativeSetTemplateAttachment(JLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
