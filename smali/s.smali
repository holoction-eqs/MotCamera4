.class public final Ls;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lbo;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    sget-object v0, Ly;->c:Ly;

    sget-object v2, Lr;->e:Lr;

    const/4 v3, 0x0

    const v4, 0x9198308

    sget-object v5, Lex;->k:Lex;

    const-class v6, Lr;

    move-object v1, v2

    invoke-static/range {v0 .. v6}, Lby;->a(Ldh;Ljava/lang/Object;Ldh;Lcg;ILex;Ljava/lang/Class;)Lbo;

    move-result-object v0

    sput-object v0, Ls;->a:Lbo;

    return-void
.end method
