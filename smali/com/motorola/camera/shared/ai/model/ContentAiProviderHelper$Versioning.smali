.class public abstract enum Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$IVersioning;


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;

.field public static final enum CONTENT_BACKWARD_COMPATIBLE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$CONTENT_BACKWARD_COMPATIBLE;

.field public static final enum CUD:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$CUD;

.field public static final enum CUD_PREVIEW:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$CUD_PREVIEW;

.field public static final enum DOC_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$DOC_SCAN;

.field public static final enum DOC_SHADOW_REMOVAL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$DOC_SHADOW_REMOVAL;

.field public static final enum GESTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$GESTURE;

.field public static final enum IMAGE_STABILIZATION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$IMAGE_STABILIZATION;

.field public static final enum LOW_LIGHT_SELFIE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$LOW_LIGHT_SELFIE;

.field public static final enum LOW_LIGHT_SELFIE_PREVIEW:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$LOW_LIGHT_SELFIE_PREVIEW;

.field public static final enum SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SCENE_DETECTION;

.field public static final enum SLIDE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SLIDE_AUTO_CAPTURE;

.field public static final enum SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SLIDE_SCAN;

.field public static final enum SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SMILE_DETECTION;


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    new-instance v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$CONTENT_BACKWARD_COMPATIBLE;

    invoke-direct {v0}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$CONTENT_BACKWARD_COMPATIBLE;-><init>()V

    sput-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->CONTENT_BACKWARD_COMPATIBLE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$CONTENT_BACKWARD_COMPATIBLE;

    new-instance v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$GESTURE;

    invoke-direct {v1}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$GESTURE;-><init>()V

    sput-object v1, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->GESTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$GESTURE;

    new-instance v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SCENE_DETECTION;

    invoke-direct {v2}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SCENE_DETECTION;-><init>()V

    sput-object v2, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->SCENE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SCENE_DETECTION;

    new-instance v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SMILE_DETECTION;

    invoke-direct {v3}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SMILE_DETECTION;-><init>()V

    sput-object v3, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->SMILE_DETECTION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SMILE_DETECTION;

    new-instance v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$LOW_LIGHT_SELFIE;

    invoke-direct {v4}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$LOW_LIGHT_SELFIE;-><init>()V

    sput-object v4, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->LOW_LIGHT_SELFIE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$LOW_LIGHT_SELFIE;

    new-instance v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$DOC_SCAN;

    invoke-direct {v5}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$DOC_SCAN;-><init>()V

    sput-object v5, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->DOC_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$DOC_SCAN;

    new-instance v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$DOC_SHADOW_REMOVAL;

    invoke-direct {v6}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$DOC_SHADOW_REMOVAL;-><init>()V

    sput-object v6, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->DOC_SHADOW_REMOVAL:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$DOC_SHADOW_REMOVAL;

    new-instance v7, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$LOW_LIGHT_SELFIE_PREVIEW;

    invoke-direct {v7}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$LOW_LIGHT_SELFIE_PREVIEW;-><init>()V

    sput-object v7, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->LOW_LIGHT_SELFIE_PREVIEW:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$LOW_LIGHT_SELFIE_PREVIEW;

    new-instance v8, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$IMAGE_STABILIZATION;

    invoke-direct {v8}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$IMAGE_STABILIZATION;-><init>()V

    sput-object v8, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->IMAGE_STABILIZATION:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$IMAGE_STABILIZATION;

    new-instance v9, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SLIDE_SCAN;

    invoke-direct {v9}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SLIDE_SCAN;-><init>()V

    sput-object v9, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->SLIDE_SCAN:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SLIDE_SCAN;

    new-instance v10, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SLIDE_AUTO_CAPTURE;

    invoke-direct {v10}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SLIDE_AUTO_CAPTURE;-><init>()V

    sput-object v10, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->SLIDE_AUTO_CAPTURE:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$SLIDE_AUTO_CAPTURE;

    new-instance v11, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$CUD_PREVIEW;

    invoke-direct {v11}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$CUD_PREVIEW;-><init>()V

    sput-object v11, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->CUD_PREVIEW:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$CUD_PREVIEW;

    new-instance v12, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$CUD;

    invoke-direct {v12}, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$CUD;-><init>()V

    sput-object v12, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->CUD:Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning$CUD;

    const/16 v13, 0xd

    new-array v13, v13, [Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;

    const/4 v14, 0x0

    aput-object v0, v13, v14

    const/4 v0, 0x1

    aput-object v1, v13, v0

    const/4 v0, 0x2

    aput-object v2, v13, v0

    const/4 v0, 0x3

    aput-object v3, v13, v0

    const/4 v0, 0x4

    aput-object v4, v13, v0

    const/4 v0, 0x5

    aput-object v5, v13, v0

    const/4 v0, 0x6

    aput-object v6, v13, v0

    const/4 v0, 0x7

    aput-object v7, v13, v0

    const/16 v0, 0x8

    aput-object v8, v13, v0

    const/16 v0, 0x9

    aput-object v9, v13, v0

    const/16 v0, 0xa

    aput-object v10, v13, v0

    const/16 v0, 0xb

    aput-object v11, v13, v0

    const/16 v0, 0xc

    aput-object v12, v13, v0

    sput-object v13, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->$VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p2, p1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;
    .locals 1

    const-class v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;
    .locals 1

    sget-object v0, Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;->$VALUES:[Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/shared/ai/model/ContentAiProviderHelper$Versioning;

    return-object v0
.end method
