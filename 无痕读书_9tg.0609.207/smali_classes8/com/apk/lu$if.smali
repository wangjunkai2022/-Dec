.class public Lcom/apk/lu$if;
.super Ljava/lang/Object;
.source "NavigationBarObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/lu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# static fields
.field public static final do:Lcom/apk/lu;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/lu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apk/lu;-><init>(Lcom/apk/lu$do;)V

    sput-object v0, Lcom/apk/lu$if;->do:Lcom/apk/lu;

    return-void
.end method
