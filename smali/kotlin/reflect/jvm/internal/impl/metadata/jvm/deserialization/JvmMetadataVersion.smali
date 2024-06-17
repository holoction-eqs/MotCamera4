.class public final Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;
.super Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

.field public static final INSTANCE_NEXT:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;


# instance fields
.field public final isStrictSemantics:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    const/4 v1, 0x1

    const/16 v2, 0x8

    const/4 v3, 0x0

    filled-new-array {v1, v2, v3}, [I

    move-result-object v2

    invoke-direct {v0, v2}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;-><init>([I)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    iget v2, v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->minor:I

    iget v0, v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->major:I

    if-ne v0, v1, :cond_0

    const/16 v4, 0x9

    if-ne v2, v4, :cond_0

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    const/4 v1, 0x2

    filled-new-array {v1, v3, v3}, [I

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;-><init>([I)V

    goto :goto_0

    :cond_0
    new-instance v4, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    add-int/2addr v2, v1

    filled-new-array {v0, v2, v3}, [I

    move-result-object v0

    invoke-direct {v4, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;-><init>([I)V

    move-object v0, v4

    :goto_0
    sput-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;->INSTANCE_NEXT:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    new-array v1, v3, [I

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;-><init>([I)V

    return-void
.end method

.method public varargs constructor <init>([I)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;-><init>([IZ)V

    return-void
.end method

.method public constructor <init>([IZ)V
    .locals 1

    .line 2
    const-string v0, "versionArray"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;-><init>([I)V

    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;->isStrictSemantics:Z

    return-void
.end method


# virtual methods
.method public final isCompatible(Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;)Z
    .locals 6

    const-string v0, "metadataVersionFromLanguageVersion"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    const/4 v1, 0x2

    iget v2, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->minor:I

    iget v3, p0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->major:I

    const/4 v4, 0x1

    if-ne v3, v1, :cond_0

    if-nez v2, :cond_0

    iget v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->major:I

    if-ne v1, v4, :cond_0

    iget v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->minor:I

    const/16 v5, 0x8

    if-ne v1, v5, :cond_0

    return v4

    :cond_0
    iget-boolean p0, p0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;->isStrictSemantics:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;->INSTANCE_NEXT:Lkotlin/reflect/jvm/internal/impl/metadata/jvm/deserialization/JvmMetadataVersion;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    iget v1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->major:I

    iget v5, v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->major:I

    if-le v5, v1, :cond_2

    goto :goto_1

    :cond_2
    if-ge v5, v1, :cond_3

    goto :goto_2

    :cond_3
    iget v1, v0, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->minor:I

    iget v5, p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->minor:I

    if-le v1, v5, :cond_4

    :goto_1
    move v1, v4

    goto :goto_3

    :cond_4
    :goto_2
    move v1, p0

    :goto_3
    if-eqz v1, :cond_5

    move-object p1, v0

    :cond_5
    if-ne v3, v4, :cond_6

    if-nez v2, :cond_6

    goto :goto_6

    :cond_6
    if-nez v3, :cond_7

    goto :goto_6

    :cond_7
    iget v0, p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->major:I

    if-le v3, v0, :cond_8

    goto :goto_4

    :cond_8
    if-ge v3, v0, :cond_9

    goto :goto_5

    :cond_9
    iget p1, p1, Lkotlin/reflect/jvm/internal/impl/metadata/deserialization/BinaryVersion;->minor:I

    if-le v2, p1, :cond_a

    :goto_4
    move p0, v4

    :cond_a
    :goto_5
    xor-int/2addr p0, v4

    :goto_6
    return p0
.end method
