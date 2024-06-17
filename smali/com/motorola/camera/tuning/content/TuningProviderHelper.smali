.class public abstract Lcom/motorola/camera/tuning/content/TuningProviderHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final WHITE_LIST:Lkotlin/collections/EmptySet;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/motorola/camera/tuning/content/TuningProviderHelper;

    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/KClass;->getSimpleName()Ljava/lang/String;

    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    sput-object v0, Lcom/motorola/camera/tuning/content/TuningProviderHelper;->WHITE_LIST:Lkotlin/collections/EmptySet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method
