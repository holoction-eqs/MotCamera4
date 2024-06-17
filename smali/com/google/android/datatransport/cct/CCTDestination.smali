.class public final Lcom/google/android/datatransport/cct/CCTDestination;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/datatransport/runtime/EncodedDestination;


# static fields
.field public static final DEFAULT_END_POINT:Ljava/lang/String;

.field public static final INSTANCE:Lcom/google/android/datatransport/cct/CCTDestination;

.field public static final SUPPORTED_ENCODINGS:Ljava/util/Set;


# instance fields
.field public final endPoint:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "hts/frbslgiggolai.o/0clgbthfra=snpoo"

    const-string v1, "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3"

    invoke-static {v0, v1}, Lcom/adobe/xmp/XMPUtils;->mergeStrings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/datatransport/cct/CCTDestination;->DEFAULT_END_POINT:Ljava/lang/String;

    const-string v1, "hts/frbslgigp.ogepscmv/ieo/eaybtho"

    const-string v2, "tp:/ieaeogn-agolai.o/1frlglgc/aclg"

    invoke-static {v1, v2}, Lcom/adobe/xmp/XMPUtils;->mergeStrings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "AzSCki82AwsLzKd5O8zo"

    const-string v2, "IayckHiZRO1EFl1aGoK"

    invoke-static {v1, v2}, Lcom/adobe/xmp/XMPUtils;->mergeStrings(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    new-instance v1, Ljava/util/HashSet;

    new-instance v2, Lcom/google/android/datatransport/Encoding;

    const-string v3, "proto"

    invoke-direct {v2, v3}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/google/android/datatransport/Encoding;

    const-string v4, "json"

    invoke-direct {v3, v4}, Lcom/google/android/datatransport/Encoding;-><init>(Ljava/lang/String;)V

    filled-new-array {v2, v3}, [Lcom/google/android/datatransport/Encoding;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    sput-object v1, Lcom/google/android/datatransport/cct/CCTDestination;->SUPPORTED_ENCODINGS:Ljava/util/Set;

    new-instance v1, Lcom/google/android/datatransport/cct/CCTDestination;

    invoke-direct {v1, v0}, Lcom/google/android/datatransport/cct/CCTDestination;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/google/android/datatransport/cct/CCTDestination;->INSTANCE:Lcom/google/android/datatransport/cct/CCTDestination;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/datatransport/cct/CCTDestination;->endPoint:Ljava/lang/String;

    return-void
.end method
