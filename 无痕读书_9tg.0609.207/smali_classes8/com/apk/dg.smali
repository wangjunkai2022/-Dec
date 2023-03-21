.class public Lcom/apk/dg;
.super Ljava/lang/Object;
.source "RandomDataUtil.java"


# static fields
.field public static final do:Ljava/util/Random;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/apk/dg;->do:Ljava/util/Random;

    return-void
.end method
