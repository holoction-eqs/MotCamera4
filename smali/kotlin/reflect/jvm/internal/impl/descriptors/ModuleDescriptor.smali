.class public interface abstract Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;


# virtual methods
.method public abstract getBuiltIns()Lkotlin/reflect/jvm/internal/impl/builtins/KotlinBuiltIns;
.end method

.method public abstract getCapability(Lcom/motorola/camera/saving/XmpData$DocData;)Ljava/lang/Object;
.end method

.method public abstract getExpectedByModules()Ljava/util/List;
.end method

.method public abstract getPackage(Lkotlin/reflect/jvm/internal/impl/name/FqName;)Lkotlin/reflect/jvm/internal/impl/descriptors/PackageViewDescriptor;
.end method

.method public abstract getSubPackagesOf(Lkotlin/reflect/jvm/internal/impl/name/FqName;Lkotlin/jvm/functions/Function1;)Ljava/util/Collection;
.end method

.method public abstract shouldSeeInternalsOf(Lkotlin/reflect/jvm/internal/impl/descriptors/ModuleDescriptor;)Z
.end method
