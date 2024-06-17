.class public final Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$Settings;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final isAdditionalBuiltInsFeatureSupported:Z

.field public final ownerModuleDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;Z)V
    .locals 1

    const-string v0, "ownerModuleDescriptor"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$Settings;->ownerModuleDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;

    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/JvmBuiltIns$Settings;->isAdditionalBuiltInsFeatureSupported:Z

    return-void
.end method
