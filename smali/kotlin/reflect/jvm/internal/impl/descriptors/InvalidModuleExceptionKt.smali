.class public abstract Lkotlin/reflect/jvm/internal/impl/descriptors/InvalidModuleExceptionKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final INVALID_MODULE_NOTIFIER_CAPABILITY:Lcom/motorola/camera/saving/XmpData$DocData;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/motorola/camera/saving/XmpData$DocData;

    const-string v1, "InvalidModuleNotifier"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/saving/XmpData$DocData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/InvalidModuleExceptionKt;->INVALID_MODULE_NOTIFIER_CAPABILITY:Lcom/motorola/camera/saving/XmpData$DocData;

    return-void
.end method
