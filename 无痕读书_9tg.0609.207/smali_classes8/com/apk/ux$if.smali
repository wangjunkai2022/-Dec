.class public Lcom/apk/ux$if;
.super Ljava/lang/Object;
.source "CacheManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/ux;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# static fields
.field public static final do:Lcom/apk/ux;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/ux;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apk/ux;-><init>(Lcom/apk/ux$do;)V

    sput-object v0, Lcom/apk/ux$if;->do:Lcom/apk/ux;

    return-void
.end method
