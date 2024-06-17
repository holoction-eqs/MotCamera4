.class public final synthetic Landroidx/media3/ui/SubtitleViewUtils$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/Predicate;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Landroidx/media3/ui/SubtitleViewUtils$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 2

    iget p0, p0, Landroidx/media3/ui/SubtitleViewUtils$$ExternalSyntheticLambda0;->$r8$classId:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    check-cast p1, Ljava/lang/String;

    if-eqz p1, :cond_0

    move v0, v1

    :cond_0
    return v0

    :pswitch_1
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    move v0, v1

    :cond_1
    return v0

    :pswitch_2
    instance-of p0, p1, Landroidx/media3/common/text/LanguageFeatureSpan;

    xor-int/2addr p0, v1

    return p0

    :goto_0
    instance-of p0, p1, Landroid/text/style/AbsoluteSizeSpan;

    if-nez p0, :cond_2

    instance-of p0, p1, Landroid/text/style/RelativeSizeSpan;

    if-eqz p0, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
