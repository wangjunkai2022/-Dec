.class public Lcom/apk/fu$if;
.super Ljava/lang/Object;
.source "EMUI3NavigationBarObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/fu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "if"
.end annotation


# static fields
.field public static final do:Lcom/apk/fu;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/apk/fu;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/apk/fu;-><init>(Lcom/apk/fu$do;)V

    sput-object v0, Lcom/apk/fu$if;->do:Lcom/apk/fu;

    return-void
.end method
