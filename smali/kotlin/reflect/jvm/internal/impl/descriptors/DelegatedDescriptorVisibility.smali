.class public abstract Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final delegate:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;->delegate:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;

    return-void
.end method


# virtual methods
.method public abstract isVisible(Lcom/motorola/camera/settings/CacheBehavior;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptorWithVisibility;Lkotlin/reflect/jvm/internal/impl/descriptors/DeclarationDescriptor;)Z
.end method

.method public final bridge synthetic toString()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;->toString$kotlin$reflect$jvm$internal$impl$descriptors$DescriptorVisibility()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final toString$kotlin$reflect$jvm$internal$impl$descriptors$DescriptorVisibility()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/DelegatedDescriptorVisibility;->delegate:Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/Visibility;->getInternalDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
