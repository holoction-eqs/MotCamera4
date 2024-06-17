.class public final Landroidx/media3/common/HeartRating;
.super Landroidx/media3/common/Rating;
.source "SourceFile"


# static fields
.field public static final CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

.field public static final FIELD_IS_HEART:Ljava/lang/String;

.field public static final FIELD_RATED:Ljava/lang/String;


# instance fields
.field public final isHeart:Z

.field public final rated:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/HeartRating;->FIELD_RATED:Ljava/lang/String;

    const/4 v0, 0x2

    invoke-static {v0}, Landroidx/media3/common/util/Util;->intToStringMaxRadix(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/media3/common/HeartRating;->FIELD_IS_HEART:Ljava/lang/String;

    new-instance v0, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Landroidx/media3/common/Format$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Landroidx/media3/common/HeartRating;->CREATOR:Landroidx/media3/common/Format$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/media3/common/Rating;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/media3/common/HeartRating;->rated:Z

    iput-boolean v0, p0, Landroidx/media3/common/HeartRating;->isHeart:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroidx/media3/common/Rating;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/media3/common/HeartRating;->rated:Z

    iput-boolean p1, p0, Landroidx/media3/common/HeartRating;->isHeart:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Landroidx/media3/common/HeartRating;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Landroidx/media3/common/HeartRating;

    iget-boolean v0, p1, Landroidx/media3/common/HeartRating;->isHeart:Z

    iget-boolean v2, p0, Landroidx/media3/common/HeartRating;->isHeart:Z

    if-ne v2, v0, :cond_1

    iget-boolean p0, p0, Landroidx/media3/common/HeartRating;->rated:Z

    iget-boolean p1, p1, Landroidx/media3/common/HeartRating;->rated:Z

    if-ne p0, p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public final hashCode()I
    .locals 1

    iget-boolean v0, p0, Landroidx/media3/common/HeartRating;->rated:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iget-boolean p0, p0, Landroidx/media3/common/HeartRating;->isHeart:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
