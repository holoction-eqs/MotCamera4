.class public final Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;


# instance fields
.field public final infos:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;-><init>(Ljava/util/List;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;->EMPTY:Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/VersionRequirementTable;->infos:Ljava/util/List;

    return-void
.end method
