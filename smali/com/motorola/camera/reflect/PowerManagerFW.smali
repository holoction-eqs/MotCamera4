.class public abstract Lcom/motorola/camera/reflect/PowerManagerFW;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ACQUIRE_CAUSES_CLI_WAKEUP:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "CLI_WAKE_LOCK"

    const/16 v1, 0x4000

    const-class v2, Landroid/os/PowerManager;

    invoke-static {v1, v2, v0}, Lkotlin/io/ExceptionsKt;->getDeclaredInt(ILjava/lang/Class;Ljava/lang/String;)I

    const-string v0, "ACQUIRE_CAUSES_CLI_WAKEUP"

    const/high16 v1, 0x1000000

    invoke-static {v1, v2, v0}, Lkotlin/io/ExceptionsKt;->getDeclaredInt(ILjava/lang/Class;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/motorola/camera/reflect/PowerManagerFW;->ACQUIRE_CAUSES_CLI_WAKEUP:I

    return-void
.end method
