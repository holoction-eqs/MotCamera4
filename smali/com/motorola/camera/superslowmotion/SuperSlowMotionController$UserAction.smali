.class public final enum Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final synthetic $VALUES:[Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

.field public static final enum CANCEL:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

.field public static final enum FAILED:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

.field public static final enum SAVE:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

.field public static final enum SKIP:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    const-string v1, "SKIP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;->SKIP:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    new-instance v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    const-string v2, "CANCEL"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;->CANCEL:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    new-instance v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    const-string v3, "SAVE"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;->SAVE:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    new-instance v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    const-string v4, "FAILED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;->FAILED:Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    filled-new-array {v0, v1, v2, v3}, [Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    move-result-object v0

    sput-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;->$VALUES:[Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;
    .locals 1

    const-class v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    return-object p0
.end method

.method public static values()[Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;
    .locals 1

    sget-object v0, Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;->$VALUES:[Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/motorola/camera/superslowmotion/SuperSlowMotionController$UserAction;

    return-object v0
.end method
