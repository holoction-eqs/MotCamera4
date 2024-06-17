.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDependenciesImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final allDependencies:Ljava/util/List;

.field public final directExpectedByDependencies:Ljava/util/List;

.field public final modulesWhoseInternalsAreVisible:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2

    sget-object v0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDependenciesImpl;->allDependencies:Ljava/util/List;

    iput-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDependenciesImpl;->modulesWhoseInternalsAreVisible:Ljava/util/Set;

    iput-object v1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/ModuleDependenciesImpl;->directExpectedByDependencies:Ljava/util/List;

    return-void
.end method
