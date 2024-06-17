.class public abstract Lcom/google/common/base/CharMatcher$NamedFastMatcher;
.super Lcom/google/common/base/CharMatcher$FastMatcher;
.source "SourceFile"


# instance fields
.field public final description:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/google/common/base/CharMatcher$FastMatcher;-><init>()V

    const-string v0, "CharMatcher.none()"

    iput-object v0, p0, Lcom/google/common/base/CharMatcher$NamedFastMatcher;->description:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/common/base/CharMatcher$NamedFastMatcher;->description:Ljava/lang/String;

    return-object p0
.end method
