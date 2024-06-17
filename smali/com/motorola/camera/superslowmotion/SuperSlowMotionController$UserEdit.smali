.class public final enum Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;

.field public static final enum CARETS:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;

.field public static final enum HANDLE:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;

.field public static final enum PLAY:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;

    const-string v1, "HANDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;->HANDLE:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;

    new-instance v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;

    const-string v2, "CARETS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;->CARETS:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;

    new-instance v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;

    const-string v3, "PLAY"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;->PLAY:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;

    filled-new-array {v0, v1, v2}, [Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;->$VALUES:[Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;
    .locals 1

    const-class v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;
    .locals 1

    sget-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;->$VALUES:[Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserEdit;

    return-object v0
.end method
