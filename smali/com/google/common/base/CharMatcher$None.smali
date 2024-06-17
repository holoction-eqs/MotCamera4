.class public final Lcom/google/common/base/CharMatcher$None;
.super Lcom/google/common/base/CharMatcher$NamedFastMatcher;
.source "SourceFile"


# static fields
.field public static final INSTANCE:Lcom/google/common/base/CharMatcher$None;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/base/CharMatcher$None;

    invoke-direct {v0}, Lcom/google/common/base/CharMatcher$None;-><init>()V

    sput-object v0, Lcom/google/common/base/CharMatcher$None;->INSTANCE:Lcom/google/common/base/CharMatcher$None;

    return-void
.end method


# virtual methods
.method public final indexIn(ILjava/lang/CharSequence;)I
    .locals 0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p0

    invoke-static {p1, p0}, Lkotlin/collections/ArraysUtilJVM;->checkPositionIndex(II)V

    const/4 p0, -0x1

    return p0
.end method

.method public final matches(C)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
