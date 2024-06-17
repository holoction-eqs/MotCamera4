.class public abstract Lcom/motorola/camera/FeaturesUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ENABLE_FRAME_LOG:Z

.field public static final ENABLE_SPLIT_SCREEN:Z

.field public static final SUPPORT_ACCELERATE:Z

.field public static final SUPPORT_AI:Z

.field public static final SUPPORT_AUTO_ENHANCE:Z

.field public static final SUPPORT_BG_SERVICE:Z

.field public static final SUPPORT_BG_SERVICE_SAME_PROCESS:Z

.field public static final SUPPORT_CLI:Z

.field public static final SUPPORT_CLI_MIRROR_INSTANT_REVIEW:Z

.field public static final SUPPORT_DUAL_CAPTURE:Z

.field public static final SUPPORT_FACE_BEAUTY:Z

.field public static final SUPPORT_FACE_BEAUTY_MANUAL_CLI:Z

.field public static final SUPPORT_GL_URGENT_THREAD:Z

.field public static final SUPPORT_MAIN_2X_TOGGLE:Z

.field public static final SUPPORT_MCF:Z

.field public static final SUPPORT_P3:Z

.field public static final SUPPORT_PHOTO_BOOTH:Z

.field public static final SUPPORT_REPROC:Z

.field public static final SUPPORT_SCENE_OPT_IN:Z

.field public static final SUPPORT_SEGMENTATION_MODE:Z

.field public static final SUPPORT_SELECTIVE_COLOR:Z

.field public static final SUPPORT_SET_EXTRA_FREE_KBYTES_REPEATEDLY:Z

.field public static final SUPPORT_SMALL_CLI:Z

.field public static final SUPPORT_SUPER_ZOOM:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    sget-object v0, Lcom/motorola/camera/AppFeatures$LazyLoader;->INSTANCE:Lcom/motorola/camera/AppFeatures;

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->APP_ACCELERATE:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_ACCELERATE:Z

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_REPROC:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_REPROC:Z

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_MCF:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    xor-int/2addr v1, v2

    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_MCF:Z

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_AI_MODELS:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    xor-int/2addr v1, v2

    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AI:Z

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->CLI_DISPLAY:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI:Z

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->SMALL_CLI_DISPLAY:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SMALL_CLI:Z

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->CLI_MIRROR_INSTANT_REVIEW:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_CLI_MIRROR_INSTANT_REVIEW:Z

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->BG_SERVICE_PROCESSING:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_BG_SERVICE:Z

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->DUAL_CAPTURE_PHOTO:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->DUAL_CAPTURE_VIDEO:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_DUAL_CAPTURE:Z

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_FACE_BEAUTY:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    xor-int/2addr v1, v2

    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_FACE_BEAUTY:Z

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->FACE_BEAUTY_MANUAL_CLI:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_FACE_BEAUTY_MANUAL_CLI:Z

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->GL_URGENT_THREAD:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_GL_URGENT_THREAD:Z

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->DISABLE_SCENE_OPT_IN:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    xor-int/2addr v1, v2

    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SCENE_OPT_IN:Z

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->SELECTIVE_COLOR:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SELECTIVE_COLOR:Z

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->SEGMENTATION_MODE:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SEGMENTATION_MODE:Z

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->GOOGLE_AUTO_ENHANCE:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_AUTO_ENHANCE:Z

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->SUPER_ZOOM:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    if-nez v1, :cond_3

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->SUPER_ZOOM_MCX:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v1, v3

    goto :goto_3

    :cond_3
    :goto_2
    move v1, v2

    :goto_3
    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SUPER_ZOOM:Z

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->SUPPORT_P3:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_P3:Z

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->PHOTO_BOOTH:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_PHOTO_BOOTH:Z

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->ZOOM_MAIN_2X:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    sput-boolean v1, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_MAIN_2X_TOGGLE:Z

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->BG_SERVICE_PROCESSING_SAME_PROCESS:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v1

    const/4 v4, 0x3

    if-nez v1, :cond_5

    const-string v1, "BG_PROC_SAME_PROCESS"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_4

    :cond_4
    move v2, v3

    :cond_5
    :goto_4
    sput-boolean v2, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_BG_SERVICE_SAME_PROCESS:Z

    sget-object v1, Lcom/motorola/camera/AppFeatures$Feature;->SET_EXTRA_FREE_KBYTES_REPEATEDLY:Lcom/motorola/camera/AppFeatures$Feature;

    invoke-virtual {v0, v1}, Lcom/motorola/camera/AppFeatures;->supports(Lcom/motorola/camera/AppFeatures$Feature;)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/camera/FeaturesUtil;->SUPPORT_SET_EXTRA_FREE_KBYTES_REPEATEDLY:Z

    const-string v0, "ENABLE_FRAME_LOG"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/camera/FeaturesUtil;->ENABLE_FRAME_LOG:Z

    const-string v0, "ENABLE_SPLIT_SCREEN"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/motorola/camera/FeaturesUtil;->ENABLE_SPLIT_SCREEN:Z

    return-void
.end method
