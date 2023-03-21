.class public Lcom/apk/qi$if;
.super Ljava/lang/Object;
.source "RequestManager.java"

# interfaces
.implements Lcom/apk/yp$do;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/apk/qi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "if"
.end annotation


# instance fields
.field public final do:Lcom/apk/jq;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "RequestManager.this"
    .end annotation
.end field

.field public final synthetic if:Lcom/apk/qi;


# direct methods
.method public constructor <init>(Lcom/apk/qi;Lcom/apk/jq;)V
    .locals 0
    .param p1    # Lcom/apk/qi;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/apk/qi$if;->if:Lcom/apk/qi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/apk/qi$if;->do:Lcom/apk/jq;

    return-void
.end method
