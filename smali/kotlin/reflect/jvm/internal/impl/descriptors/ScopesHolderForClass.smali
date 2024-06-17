.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;

.field public static final Companion:Lkotlin/ranges/IntRange$Companion;


# instance fields
.field public final classDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

.field public final kotlinTypeRefinerForOwnerModule:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;

.field public final scopeFactory:Lkotlin/jvm/functions/Function1;

.field public final scopeForOwnerModule$delegate:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string v3, "scopeForOwnerModule"

    const-string v4, "getScopeForOwnerModule()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1Impl;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lkotlin/ranges/IntRange$Companion;

    const/4 v1, 0x5

    invoke-direct {v0, v1, v2}, Lkotlin/ranges/IntRange$Companion;-><init>(II)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;->Companion:Lkotlin/ranges/IntRange$Companion;

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;Lkotlin/reflect/jvm/internal/impl/storage/StorageManager;Lkotlin/jvm/functions/Function1;Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;->classDescriptor:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassDescriptor;

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;->scopeFactory:Lkotlin/jvm/functions/Function1;

    iput-object p4, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;->kotlinTypeRefinerForOwnerModule:Lkotlin/reflect/jvm/internal/impl/types/checker/KotlinTypeRefiner;

    new-instance p1, Landroidx/window/core/Version$bigInteger$2;

    const/16 p3, 0x1d

    invoke-direct {p1, p0, p3}, Landroidx/window/core/Version$bigInteger$2;-><init>(Ljava/lang/Object;I)V

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p3, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    invoke-direct {p3, p2, p1}, Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager;Lkotlin/jvm/functions/Function0;)V

    iput-object p3, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/ScopesHolderForClass;->scopeForOwnerModule$delegate:Lkotlin/reflect/jvm/internal/impl/storage/LockBasedStorageManager$LockBasedNotNullLazyValue;

    return-void
.end method
