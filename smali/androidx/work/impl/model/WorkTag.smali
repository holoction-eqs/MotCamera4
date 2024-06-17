.class public final Landroidx/work/impl/model/WorkTag;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final tag:Ljava/lang/String;

.field public final workSpecId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/model/WorkTag;->tag:Ljava/lang/String;

    iput-object p2, p0, Landroidx/work/impl/model/WorkTag;->workSpecId:Ljava/lang/String;

    return-void
.end method
