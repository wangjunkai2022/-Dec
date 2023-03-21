.class public Lcom/apk/d$do;
.super Ljava/lang/Object;
.source "ReadAdHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation


# static fields
.field public static final do:Lcom/apk/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/apk/d;

    invoke-direct {v0}, Lcom/apk/d;-><init>()V

    sput-object v0, Lcom/apk/d$do;->do:Lcom/apk/d;

    return-void
.end method
