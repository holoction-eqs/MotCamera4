.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageViewDescriptorFactory$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $$INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageViewDescriptorFactory$Companion;

.field public static final CAPABILITY:Lcom/motorola/camera/saving/XmpData$DocData;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageViewDescriptorFactory$Companion;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageViewDescriptorFactory$Companion;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageViewDescriptorFactory$Companion;->$$INSTANCE:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageViewDescriptorFactory$Companion;

    new-instance v0, Lcom/motorola/camera/saving/XmpData$DocData;

    const-string v1, "PackageViewDescriptorFactory"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/motorola/camera/saving/XmpData$DocData;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/PackageViewDescriptorFactory$Companion;->CAPABILITY:Lcom/motorola/camera/saving/XmpData$DocData;

    return-void
.end method
