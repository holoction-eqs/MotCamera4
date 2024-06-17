.class public final enum Lcom/motorola/camera/PreviewSize$AspectRatioType;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/PreviewSize$AspectRatioType;

.field public static final enum FULL:Lcom/motorola/camera/PreviewSize$AspectRatioType;

.field public static final enum STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatioType;

.field public static final enum WIDE:Lcom/motorola/camera/PreviewSize$AspectRatioType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/motorola/camera/PreviewSize$AspectRatioType;

    const-string v1, "STANDARD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/PreviewSize$AspectRatioType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/PreviewSize$AspectRatioType;->STANDARD:Lcom/motorola/camera/PreviewSize$AspectRatioType;

    new-instance v1, Lcom/motorola/camera/PreviewSize$AspectRatioType;

    const-string v2, "WIDE"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/PreviewSize$AspectRatioType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/PreviewSize$AspectRatioType;->WIDE:Lcom/motorola/camera/PreviewSize$AspectRatioType;

    new-instance v2, Lcom/motorola/camera/PreviewSize$AspectRatioType;

    const-string v3, "FULL"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/PreviewSize$AspectRatioType;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/PreviewSize$AspectRatioType;->FULL:Lcom/motorola/camera/PreviewSize$AspectRatioType;

    filled-new-array {v0, v1, v2}, [Lcom/motorola/camera/PreviewSize$AspectRatioType;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/PreviewSize$AspectRatioType;->$VALUES:[Lcom/motorola/camera/PreviewSize$AspectRatioType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/PreviewSize$AspectRatioType;
    .locals 1

    const-class v0, Lcom/motorola/camera/PreviewSize$AspectRatioType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/PreviewSize$AspectRatioType;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/PreviewSize$AspectRatioType;
    .locals 1

    sget-object v0, Lcom/motorola/camera/PreviewSize$AspectRatioType;->$VALUES:[Lcom/motorola/camera/PreviewSize$AspectRatioType;

    invoke-virtual {v0}, [Lcom/motorola/camera/PreviewSize$AspectRatioType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/PreviewSize$AspectRatioType;

    return-object v0
.end method
