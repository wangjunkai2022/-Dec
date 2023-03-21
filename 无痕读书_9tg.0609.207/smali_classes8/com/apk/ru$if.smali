.class public Lcom/apk/ru$if;
.super Ljava/lang/Object;
.source "RequestManagerRetriever.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/ru;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# static fields
.field public static final do:Lcom/apk/ru;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/ru;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apk/ru;-><init>(Lcom/apk/ru$do;)V

    sput-object v0, Lcom/apk/ru$if;->do:Lcom/apk/ru;

    return-void
.end method
