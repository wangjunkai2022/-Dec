.class public Lcom/apk/tw$if;
.super Ljava/lang/Object;
.source "OkGo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/tw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# static fields
.field public static do:Lcom/apk/tw;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/tw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apk/tw;-><init>(Lcom/apk/tw$do;)V

    sput-object v0, Lcom/apk/tw$if;->do:Lcom/apk/tw;

    return-void
.end method
