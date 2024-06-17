.class public abstract Lcom/motorola/camera/reflect/DisplayFW;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final CLI_DISPLAY:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-string v0, "CLI_DISPLAY"

    const/4 v1, -0x1

    const-class v2, Landroid/view/Display;

    invoke-static {v1, v2, v0}, Lkotlin/io/ExceptionsKt;->getDeclaredInt(ILjava/lang/Class;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/motorola/camera/reflect/DisplayFW;->CLI_DISPLAY:I

    return-void
.end method
