.class public Las;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lds;


# instance fields
.field public final a:Lby;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lbp;->a()Lbp;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lby;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Las;-><init>()V

    iput-object p1, p0, Las;->a:Lby;

    return-void
.end method
