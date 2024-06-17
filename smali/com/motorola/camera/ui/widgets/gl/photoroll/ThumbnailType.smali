.class public final enum Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

.field public static final enum EMPTY:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

.field public static final enum PHOTO:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

.field public static final enum SEGMENTATION_FIRST_SHOT:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

.field public static final enum VIDEO:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    new-instance v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    const-string v1, "EMPTY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->EMPTY:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    new-instance v1, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    const-string v2, "SECURE_LOCK"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    const-string v3, "PHOTO"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->PHOTO:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    new-instance v3, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    const-string v4, "SEGMENTATION_FIRST_SHOT"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->SEGMENTATION_FIRST_SHOT:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    new-instance v4, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    const-string v5, "VIDEO"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6}, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->VIDEO:Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    new-instance v5, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    const-string v6, "PLACE_HOLDER"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7}, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;-><init>(Ljava/lang/String;I)V

    filled-new-array/range {v0 .. v5}, [Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;
    .locals 1

    const-class v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->$VALUES:[Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    invoke-virtual {v0}, [Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/ui/widgets/gl/photoroll/ThumbnailType;

    return-object v0
.end method
