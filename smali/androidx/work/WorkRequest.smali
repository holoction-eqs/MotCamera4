.class public abstract Landroidx/work/WorkRequest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final id:Ljava/util/UUID;

.field public final tags:Ljava/util/Set;

.field public final workSpec:Landroidx/work/impl/model/WorkSpec;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Landroidx/work/impl/model/WorkSpec;Ljava/util/HashSet;)V
    .locals 1

    const-string v0, "id"

    invoke-static {p1, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workSpec"

    invoke-static {p2, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tags"

    invoke-static {p3, v0}, Lkotlin/ExceptionsKt;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkRequest;->id:Ljava/util/UUID;

    iput-object p2, p0, Landroidx/work/WorkRequest;->workSpec:Landroidx/work/impl/model/WorkSpec;

    iput-object p3, p0, Landroidx/work/WorkRequest;->tags:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final getStringId()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Landroidx/work/WorkRequest;->id:Ljava/util/UUID;

    invoke-virtual {p0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "id.toString()"

    invoke-static {p0, v0}, Lkotlin/ExceptionsKt;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
