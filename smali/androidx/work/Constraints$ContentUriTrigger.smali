.class public final Landroidx/work/Constraints$ContentUriTrigger;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final isTriggeredForDescendants:Z

.field public final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/net/Uri;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/Constraints$ContentUriTrigger;->uri:Landroid/net/Uri;

    iput-boolean p2, p0, Landroidx/work/Constraints$ContentUriTrigger;->isTriggeredForDescendants:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const-class v1, Landroidx/work/Constraints$ContentUriTrigger;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v1, v2}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    return v2

    :cond_2
    const-string v1, "null cannot be cast to non-null type androidx.work.Constraints.ContentUriTrigger"

    invoke-static {p1, v1}, Lkotlin/ExceptionsKt;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroidx/work/Constraints$ContentUriTrigger;

    iget-object v1, p0, Landroidx/work/Constraints$ContentUriTrigger;->uri:Landroid/net/Uri;

    iget-object v3, p1, Landroidx/work/Constraints$ContentUriTrigger;->uri:Landroid/net/Uri;

    invoke-static {v1, v3}, Lkotlin/ExceptionsKt;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean p0, p0, Landroidx/work/Constraints$ContentUriTrigger;->isTriggeredForDescendants:Z

    iget-boolean p1, p1, Landroidx/work/Constraints$ContentUriTrigger;->isTriggeredForDescendants:Z

    if-eq p0, p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Landroidx/work/Constraints$ContentUriTrigger;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean p0, p0, Landroidx/work/Constraints$ContentUriTrigger;->isTriggeredForDescendants:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
