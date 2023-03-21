.class public Lcom/apk/xm;
.super Ljava/lang/Object;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/apk/xm$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final do:Lcom/apk/ds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/apk/ds<",
            "Lcom/apk/xm$if<",
            "TA;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/apk/xm$do;

    invoke-direct {v0, p0, p1, p2}, Lcom/apk/xm$do;-><init>(Lcom/apk/xm;J)V

    iput-object v0, p0, Lcom/apk/xm;->do:Lcom/apk/ds;

    return-void
.end method
